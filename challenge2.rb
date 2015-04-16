myfile = File.open(ARGV[0])
myfile.each_line do |line|
   line.chomp!
   next if line.empty?
   first, last = line.split(" ")
   puts  "#{last} #{first}"
end
