#!/usr/bin/ruby -w

require 'enumerator'

str="RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag.";

a = str.scan("RUBY").count();
occure = "Occurences of RUBY word in string1 : #{a}";
puts occure;

positions = str.enum_for(:scan, /RUBY/).map { Regexp.last_match.begin(0) }
puts "positions of RUBY :";
puts positions;
