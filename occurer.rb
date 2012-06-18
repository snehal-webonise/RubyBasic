#!/usr/bin/ruby -w

require 'date'
require 'enumerator'

str="RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code.The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag.";

str1="RUBY does not require (or support) explicit type definition in variable declaration; a variable's type is determined by the context in which the variable is used.";

a = str.scan("RUBY").count();
occure = "Occurences of RUBY word in string1 : #{a}";
puts occure;

positions = str.enum_for(:scan, /RUBY/).map { Regexp.last_match.begin(0) }
puts "positions of RUBY :";
puts positions;


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

puts "Capitalize String:";
puts str.capitalize;
puts

puts "Combine two strings";
puts str+str1
puts
 
puts "Heredoc";
heredoc1 = <<-str
RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code.The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag.RUBY does not require (or support) explicit type definition in variable declaration; a variable's type is determined by the context in which the variable is used.
str
puts heredoc1;


puts "Current Date :";
puts Time.now.strftime("%d/%m/%Y")
puts

start = Time.local(2011,1,12);
puts start.strftime("%d %b %Y");
puts

time=Time.new+(60*60*24*7)
puts "Add 7 days to current days :";
puts "#{time.day}/#{time.month}/#{time.year}";
puts

puts "Cut string1 into 4 parts :";
puts str[0,54];
puts str[55,54];
puts str[109,54];
puts str[164,54];
puts

puts "Split the string";
splitstr1 = str.split(".");
puts splitstr1;
puts splitstr1[0].split(" ").reverse.join(" ")+splitstr1[1].split(" ").reverse.join(" ");
puts

puts "Remove HTML character"
puts str.gsub(/<\/?[^>]*>/, "");
puts 

puts "Print RUBY word by traversing string1"
puts str.scan("RUBY");
puts

puts "Length of string1 and string2"
puts "Length of String1 : #{str.length}";
puts "Length of String2 : #{str1.length}";
puts 

puts "Write a string1 into file"
aFile = File.new("myString.txt", "w")
aFile.write(str)
aFile.close

puts "Print Globle variables"
globlevar = global_variables();
puts globlevar;
puts


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

time=Time.new+(60*60*24*20)
puts "Add 20 days to current days :";
puts "#{time.day}/#{time.month}/#{time.year}";
puts

puts "Print Date in array format :";
puts Time.now.to_a[0..Time.now.to_a.length]
puts

