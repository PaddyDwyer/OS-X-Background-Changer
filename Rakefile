require 'rake'
require 'erb'
require "fileutils"

include FileUtils


desc "install the plist file in the users LaunchAgent dir"
task :install => :deploy do
	plist = File.join(ENV['HOME'], "Library", "LaunchAgents", "com.turtledome.BGChanger.plist")
	`launchctl load #{plist}`
end

desc "deploy the plist file to the users LaunchAgent dir"
task :deploy do
	plist = File.join(ENV['HOME'], "Library", "LaunchAgents", "com.turtledome.BGChanger.plist")
	File.open(plist, "w") do |new_file|
		new_file.write ERB.new(File.read("com.turtledome.BGChanger.plist.erb")).result(binding)
	end
end

desc "uninstall the plist file"
task :uninstall do
	plist = File.join(ENV['HOME'], "Library", "LaunchAgents", "com.turtledome.BGChanger.plist")
	`launchctl unload #{plist}`
end

desc "reload the job"
task :reload => [:uninstall, :install] do
end
