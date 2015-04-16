myfile = File.open(ARGV[0])
myfile.each_line do |line|
   line.chomp!
   next if line.empty?
   fizz, buzz, count = line.split(" ")
   ret = ""
   for i in 1..count.to_i
        if (i % fizz.to_i == 0) and (i % buzz.to_i == 0)
	         ret << "FB"
        elsif (i % fizz.to_i == 0)
	         ret << "F"
        elsif (i % buzz.to_i == 0)
	         ret << "B"
        else
           ret << i.to_s
        end
        ret << " "
   end
   puts ret
end
