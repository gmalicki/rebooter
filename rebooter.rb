require 'rubygems'
require 'fileutils'

BASE_PATH = "/home/webrentals/webroot/"
DELAY = 200

def reboot_on
  FileUtils.cp BASE_PATH+ 'should_on.php', BASE_PATH+ 'should.php' 
end

def reboot_off
  FileUtils.cp BASE_PATH+ 'should_off.php', BASE_PATH+'should.php'
end

loop do
  reboot_on
  sleep 20
  reboot_off
  sleep DELAY
  puts "rebooting"
end