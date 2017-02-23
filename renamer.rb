# renamer.rb
# We want to grab every file in the directory specified, and rename it so that it changes capital letters to lowercase, and replaces spaces with underscores

dir = ARGV[0] || "."
d = Dir.new(dir)
d.reject{|x| x[0] == '.'}.each do |file|
  File.rename(file, file.downcase.gsub(" ",'_') )
end