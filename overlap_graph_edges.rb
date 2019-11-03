#!/usr/bin/ruby
kmer = []
File.foreach("graph_input.txt").with_index do |line,i|
kmer[i] = line.strip
end
len = kmer[0].length
kmer = kmer.uniq
kmer.each_with_index do |k,i|
  overlaps = []
  kmer.each_with_index do |kmer_check,w|
    if k[1..len] == kmer_check[0..len-2]
      overlaps.push(kmer_check)
    end
  end
  if !overlaps.empty?
  print "kmer ##{i}: " + k + "->" + overlaps.join(",") + "\n"
end
end
