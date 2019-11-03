#!/usr/bin/ruby
len = ARGV[0].length
kmer = ARGV[1].to_i
print "original input: #{ARGV[0]}\n"
for i in 0..len
  if (i+kmer) <= len
    print "kmer #{i+1}: #{ARGV[0][i..i+kmer-1]}\n"
  end
end
