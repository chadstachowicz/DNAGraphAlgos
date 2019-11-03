#!/usr/bin/ruby
text = ARGV[0]
len = ARGV[0].length
kmer_len = ARGV[1].to_i
kmer = []
print "original input: #{ARGV[0]}\n"
for i in 0..len-kmer_len
  kmer[i] = text[i..kmer_len+i-1]
end
ops = []
kmer.each_with_index do |k,i|
  len2 = k.length-1
  for i in 0..len2-1
    ops.push(k[i..len2+i-1])
  end
end
ops = ops.uniq
ops.each_with_index do |k,i|
  overlaps = []
  kmer.each_with_index do |kmer_check,w|
    if ops[i] == kmer_check[0..kmer_len-2]
      overlaps.push(kmer_check[1..kmer_len-1])
    end
  end
  if !overlaps.empty?
  print k + "->" + overlaps.join(",") + "\n"
  end
end
