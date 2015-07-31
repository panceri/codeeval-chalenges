myfile = File.open(ARGV[0])
myfile.each_line do |line|
   line.chomp!
   next if line.empty?
   count = 0
   a = line.chomp.to_i
   while a.to_s != a.to_s.reverse
	a = a + a.to_s.reverse.to_i
	count+=1
   end
   puts count.to_s + " " + a.to_s
end
