#!/usr/bin/ruby
inputs = []
graph = {}
multiple_paths = {}
temp_graph = {}
temp_multiple_paths = {}
start = 0
no_multi = true
File.foreach("euler_inputs.txt").with_index do |line,i|
arr = line.strip.split(" -> ")
graph[arr[0]] = arr[1]
end
for i in 0..graph.count-1
  arr2 = graph[i.to_s].split(",")
  if arr2.length > 1
    multiple_paths[i.to_s] = arr2
    no_multi = false
    start = i
    print "multi path: " + i.to_s + ' -> ' + arr2.to_s + "\n"
  else
    print "path: " + i.to_s + ' -> ' + graph[i.to_s]+ "\n"
  end
end
if no_multi == true
  start = graph["0"]
end
temp_multiple_paths = multiple_paths
temp_graph = graph
multiple_paths.each_key do |i,k|
end

def findNextKey()

end
