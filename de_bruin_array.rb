#!/usr/bin/ruby
kmer = []
File.foreach("de_brun_kmer.txt").with_index do |line,i|
kmer[i] = line.strip
end
kmer_len = kmer[0].length
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
