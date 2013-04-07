#!/usr/bin/env macruby

#Source: https://gist.github.com/jerodsanto/1229361
framework "Cocoa"

yday = Time.new.yday
path = File.expand_path(File.dirname(__FILE__))
image = Dir.glob("#{path}/images/#{yday}*")[0]
puts yday
wallpaper_url  = NSURL.fileURLWithPath(image, isDirectory: false)
workspace      = NSWorkspace.sharedWorkspace
 
NSScreen.screens.each do |screen|
  workspace.setDesktopImageURL(wallpaper_url, forScreen:screen, options:nil, error:nil)
end


