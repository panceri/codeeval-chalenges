
myfile = File.open(ARGV[0])


myfile.each_line do |line|
   line.chomp!
   next if line.empty?
   writer, numbers = line.split("| ") 
   name = ""
   numbers.split(" ").each do |n|
     name << writer[(n.to_i > 0 ? n.to_i - 1 : n.to_i)]
   end
   puts name
end
