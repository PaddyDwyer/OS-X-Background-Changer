#!/usr/bin/env ruby -wKU

require "rubygems"
require "appscript"

include Appscript, MacTypes

path = File.expand_path(File.dirname(__FILE__))
app('Finder').desktop_picture.set(FileURL.path("#{path}/images/desktopography1900x1200.jpg"))
