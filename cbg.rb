#!/opt/local/bin/ruby

require "rubygems"
require "appscript"

include Appscript, MacTypes

path = File.expand_path(File.dirname(__FILE__))

yday = Time.new.yday
image = Dir.glob("#{path}/images/#{yday}*")[0]

app('Finder').desktop_picture.set(FileURL.path(image))
