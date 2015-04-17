myfile = File.open(ARGV[0])
myfile.each_line do |line|
   line.chomp!
   next if line.empty?
   phrase, pattern = line.split(", ")
   pattern.split("").each do |char|
     phrase.gsub!(char, "")
   end
   puts phrase.chomp
end
