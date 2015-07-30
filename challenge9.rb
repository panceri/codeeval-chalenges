myfile = File.open(ARGV[0])
filter = /\W+/
myfile.each_line do |line|
   line.chomp!
   next if line.empty?
   phrase = ""
   upper = true #upper  
   for i in 0..line.length
   	   if line[i].nil? or line[i].strip.empty? or line[i].match(filter)
   	   	phrase << line[i].to_s
   	   else
   	   	phrase << line[i].upcase if upper
   	   	phrase << line[i].downcase if !upper
   	   	upper = !upper
   	   end
   end
   puts phrase
end
