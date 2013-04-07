OS X Background Changer
=======================

A simple ruby script which can change your desktop background every day.



How it works
------------
This is a really simple ruby script which changes the background on the desktop. It uses [MacRuby](https://rvm.io/interpreters/macruby/) to do the work. It happens once a day using [launchd](http://en.wikipedia.org/wiki/Launchd).


Installation
------------
### Prerequisits
Install MacRuby using rvm

    sudo rvm install macruby

### Clone/Fork
Clone or fork this repository.

### Get some images
Get some desktop images. I recommend 365 so you have one for every day of the year.
Put them inside the images folder. If the folder has less than 365 images, one will be selected at random. Then run the `renameimages.rb` script.

### Run the rake script
Rune `rake install`. That'll setup the script with launchd. You should see your background change immediately. If it didn't something went wrong.
