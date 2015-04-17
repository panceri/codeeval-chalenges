myfile = File.open(ARGV[0])
total = 0
myfile.each_line do |line|
   line.chomp!
   next if line.empty?
   numbers = line.gsub(/\s+/, "").reverse.split("")
   numbers.each.with_index(1) do |number, index|
     if (index % 2 == 0)
       number = number.to_i * 2
       if (number.to_i > 9)
         tmp = 0
         number.to_s.split("").each do |n|
           tmp += n.to_i
         end
         number = tmp
       end
     end
     total += number.to_i
   end
   puts "1" if total % 10 == 0
   puts "0" if total % 10 != 0
   total = 0
end
