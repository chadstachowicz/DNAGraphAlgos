#!/usr/bin/ruby
genome = ""
File.foreach("kmer.txt").with_index do |line,i|
if i==0
  genome = line.to_s.strip
elsif !line.nil?
  line2 = line.strip.chomp
#  print line2
  len = line2.length
  genome = genome.to_s + line2[len-1..len]
end
end
print genome + "\n"
