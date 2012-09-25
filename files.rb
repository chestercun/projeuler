
filename = 'input.txt'
file = File.new( filename, 'r' )
# options for the 2nd param
# 'r' readonly, 'r+' read-write from beginning
# 'w' writeonly overwrites filename, 'w+' write-read overwrite
# 'a' append/tack-on, 'a+' read-append mode

# API
# absolute path, from present working dir
File.absolute_path('soup/pj/jellyfries') # => '/usr/bin/ccun/Desktop/soup/pj/jellyfries
# last access time
File.atime( filename ) # => Tues May 21 ##:##:## CDT 2012
# size
File.size( filename ) # => 2593
# true is named file is a directory
File.exist? filename
# true if file exists
File.exists? filename
# directory or symlink?
File.directory?(".")
# get directory, throw away file name
File.dirname("/home/ccun/arf/derp.rb") # => "/home/ccun/arf"

# ex 1
File.open( filename,'w') { |f| f.write( yourWords ) }
# ex 2
file = File.new("readfile.txt","r")
file.each do |line|
	# do work
	puts line
end
# ex 3
File.open("readfile.txt","r") do |infile|
	while (line = infile.gets)
		puts line
	end
end
# ex 4
begin
	f = File.new("read.txt","r")
	while (line = f.gets)
		puts line
	end
	f.close
rescue => err
	puts "Exception: #{err}"
	err
end
# ex 5


