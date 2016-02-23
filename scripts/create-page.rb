#!/usr/bin/env ruby

page = ARGV[0]
puts "Creating #{page}"

category = File.dirname page
name = File.basename page
date = `date +%Y-%m-%d`.strip

path = "tils/#{category}/#{date}-#{name}.md"

puts "New file at #{path}"

`mkdir -p #{File.dirname(path)}`
`touch #{path}`

header = <<EOF
# #{page}
 
_Generated on #{date}_


EOF

File.open(path, 'w') { |file| file.write header }

pages = File.open('.pages.txt').readlines.push("#{category}, #{date}, #{name}, #{path}").sort.uniq.join("\n")
File.open('.pages.txt', 'w') { |file| file.write pages }
