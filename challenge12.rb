myfile = File.open(ARGV[0])
myfile.each_line do |line|
   line.chomp!
   next if line.empty?
   age = line.to_i
   if age < 0 or age > 100
   	  puts "This program is for humans"
   else
      case age 
      	when 0..2 
      		puts "Still in Mama's arms" 
      	when 3..4 
      		puts "Preschool Maniac"
      	when 5..11 
      		puts "Elementary school"
      	when 12..14 
      		puts "Middle school"
      	when 15..18 
      		puts "High school"
      	when 19..22 
      		puts "College"
      	when 23..65 
      		puts "Working for the man"
      	when 66..100 
      		puts "The Golden Years"
      end
   end
end
