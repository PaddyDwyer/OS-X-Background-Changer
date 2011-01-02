#!/usr/bin/env ruby -wKU

require "rubygems"
require "appscript"

include Appscript, MacTypes

path = File.expand_path(File.dirname(__FILE__))

yday = Time.new.yday

app('Finder').desktop_picture.set(FileURL.path("#{path}/images/#{yday}.jpg"))
