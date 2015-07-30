myfile = File.open(ARGV[0])
myfile.each_line do |line|
   line.chomp!
   next if line.empty?
   numbers, value = line.split(";") 
   pairs = ""
   numbers.split(",").each do |n|
     numbers.split(",").each do |n1|
      if (n.to_i + n1.to_i == value.to_i and !pairs.include? n1 + "," + n)
        pairs << n + "," + n1 + ";" if n.to_i < n1.to_i
        pairs << n1 + "," + n + ";" if n1.to_i < n.to_i
      end
     end
   end
   puts (pairs.empty?) ? "NULL" : pairs[0, pairs.length - 1]
end
