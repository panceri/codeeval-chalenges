myfile = File.open(ARGV[0])
myfile.each_line do |line|
   line.chomp!
   next if line.empty?
   count = 0
   value = line.chomp.to_i
   puts "0" if value.odd?
   puts "1" if value.even?
end
