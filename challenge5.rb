myfile = File.open(ARGV[0])

letters = Hash[]
count = 1
for letter in 'a'..'z'
  letters[letter] = "#{count}"
  count += 1
end

myfile.each_line do |line|
   line.chomp!
   next if line.empty?
   numbers, pattern = line.split(" ")
   operator = ""
   if pattern.include? "+"
     operator = "+"
   else
     operator = "-"
   end

   first, second = pattern.split(operator)

   first_number = ""
   second_number = ""
   first.split("").each do |i|
     first_number << numbers[letters[i].to_i - 1]
   end


   second.split("").each do |i|
      second_number << numbers[letters[i].to_i - 1]
   end

   puts first_number.to_i.send(operator,second_number.to_i)
end
