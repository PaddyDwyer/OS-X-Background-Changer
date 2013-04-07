#!/usr/bin/env macruby

#Source: https://gist.github.com/jerodsanto/1229361
framework "Cocoa"

yday = Time.new.yday
path = File.expand_path(File.dirname(__FILE__))
arr_images = Dir.glob("#{path}/images/")

# tries to get image based on day of year
image = Dir.glob("#{path}/images/#{yday}*")[0]

# if fails, gets a random image from folder
if (image == nil)
	image = Dir.glob("#{path}/images/*.jpg").sample
end

wallpaper_url  = NSURL.fileURLWithPath(image, isDirectory: false)
workspace      = NSWorkspace.sharedWorkspace
 
# uses Macruby to change desktop. Works for the current space
NSScreen.screens.each do |screen|
  workspace.setDesktopImageURL(wallpaper_url, forScreen:screen, options:nil, error:nil)
end


