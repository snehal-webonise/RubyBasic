#!/usr/bin/ruby -w

require 'date'
require 'enumerator'

str="RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code.The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag.";

str1="RUBY does not require (or support) explicit type definition in variable declaration; a variable's type is determined by the context in which the variable is used.";



print "1. Find occurance of RUBY from string1.\n"
print "2. Find the position where RUBY occures in the string1.\n"
print "3. Create array of words in string1 & print them using a recursive function.\n"
print "4. Capitalise string1\n"
print "5. Combine string1 & two.\n"
print "6. Print string1 & two using heredoc.\n"
print "7. Print current date\n"
print "8. print 12thJan2012\n"
print "9. add seven days  current date\n"
print "10. Cut the string1 into four parts & print it.\n"
print "11. Divide the string1 by occurances of '.'. Combine the array in reverse word sequence\n"
print "12. Remove the HTML characters from string.\n"
print "13. Print the 'RUBY' word from string 1 by traversing it using string functions\n"
print "14. Find the length of string 1 & 2\n"
print "15. Create file & write string 1 to that file using RUBY functions.\n"
print "16. Print all Global varibles provided by RUBY\n"
print "17. Usage and examples of Header (RUBY) \n"
print "18. Redirect page 1 to page 2.\n"
print "19. Compare two dates. (12-4-2010 & 12-5-2011). Calculate the days between these two dates.\n"
print "20. Print date after 20 days from current date\n"
print "21. Print date in array format.\n"

print "Enter your choice: "
grade = gets.chomp.to_i

case grade
when 1
a = str.scan("RUBY").count();
occure = "Occurences of RUBY word in string1 : #{a}";
puts occure;

when 2
positions = str.enum_for(:scan, /RUBY/).map { Regexp.last_match.begin(0) }
puts "positions of RUBY :";
puts positions;

when 3
myArray = str.split(/ /);
def recursive_Array(params)
  return if params.empty?
  params[0].each do |p|
    puts p
    recursive_Array(params[1..-1])
  end
end

recursive_Array(myArray)
puts

when 4
puts "Capitalize String:";
puts str.capitalize;
puts

when 5
puts "Combine two strings";
puts str+str1
puts
 
when 6
puts "Heredoc";
heredoc1 = <<-str
RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code.The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag.RUBY does not require (or support) explicit type definition in variable declaration; a variable's type is determined by the context in which the variable is used.
str
puts heredoc1;

when 7
puts "Current Date :";
puts Time.now.strftime("%d/%m/%Y")
puts

when 8
start = Time.local(2011,1,12);
puts start.strftime("%d %b %Y");
puts

when 9
time=Time.new+(60*60*24*7)
puts "Add 7 days to current days :";
puts "#{time.day}/#{time.month}/#{time.year}";
puts

when 10
puts "Cut string1 into 4 parts :";
puts str[0,54];
puts str[55,54];
puts str[109,54];
puts str[164,54];
puts

when 11
puts "Split the string";
splitstr1 = str.split(".");
puts splitstr1;
puts splitstr1[0].split(" ").reverse.join(" ")+splitstr1[1].split(" ").reverse.join(" ");
puts

when 12
puts "Remove HTML character"
puts str.gsub(/<\/?[^>]*>/, "");
puts 

when 13
puts "Print RUBY word by traversing string1"
puts str.scan("RUBY");
puts

when 14
puts "Length of string1 and string2"
puts "Length of String1 : #{str.length}";
puts "Length of String2 : #{str1.length}";
puts 

when 15
puts "Write a string1 into file"
aFile = File.new("myString.txt", "w")
aFile.write(str)
aFile.close

when 16
puts "Print Globle variables"
globlevar = global_variables();
puts globlevar;
puts

when 19
puts "Compare two dates"
start = Time.local(2010,12,4);
end1 = Time.local(2011,12,5);
if(end1 > start)
result = (end1-start)/60/60/24;
else
result = (end1-start)/60/60/24;
end
puts result;
puts

when 20
time=Time.new+(60*60*24*20)
puts "Add 20 days to current days :";
puts "#{time.day}/#{time.month}/#{time.year}";
puts

when 21
puts "Print Date in array format :";
puts Time.now.to_a[0..Time.now.to_a.length]
puts
end
