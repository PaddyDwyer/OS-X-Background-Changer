require 'rake'
require 'erb'
require "fileutils"

include FileUtils


desc "install the plist file in the users LaunchAgent dir"
task :install do
	plist = File.join(ENV['HOME'], "Library", "LaunchAgents", "com.turtledome.BGChanger.plist")
	File.open(plist, "w") do |new_file|
		new_file.write ERB.new(File.read("com.turtledome.BGChanger.plist.erb")).result(binding)
	end
	`launchctl load #{plist}`
end
