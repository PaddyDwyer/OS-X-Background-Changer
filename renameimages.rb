#!/usr/bin/env ruby -wKU

require "fileutils"

include FileUtils

images = Dir["images/*"]
images.shuffle!
i = 1
images.each do |image|
	unless File.basename(image, ".txt") == "images"
		ext = File.extname(image)
		mv image, "images/#{i}#{ext}"
		i += 1
	end
end
