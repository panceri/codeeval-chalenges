myfile = File.open(ARGV[0])
ret = 0
myfile.each_line do |line|
   line.chomp!
   next if line.empty?
   ret += line.to_i
end
puts ret
