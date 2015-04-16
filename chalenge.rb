
myfile = File.open(ARGV[0])

v = Hash["zero" => "0", "one" => "1", "two" => "2", "three" => "3", "four" => "4", "five" => "5", "six" => "6", "seven" => "7", "eight" => "8",
  "nine" => "9"]

myfile.each_line do |line|
   ret = ""
   line.split(";").each do |word|
       ret << v[word.chomp].to_s
   end
   puts ret
end
