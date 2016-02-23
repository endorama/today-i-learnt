#!/usr/bin/env ruby

tils = []

print "Generating README.md "

File.open('.pages.txt').each_line do |line|
  print '.'
  line = line.split(', ')
  tils << {
    category: line[0],
    date: line[1],
    name: line[2],
    path: line[3]
  }
end

content = <<EOF
# TIL - Today I Learned

From an awesome idea got from [jbranchaud](https://github.com/jbranchaud/til), a
repository to collect all the today I learned about the more different topics I
learned.

EOF

grouped_tils = tils.group_by { |t| t[:category] }
grouped_tils.each do |category, entries|
  content += "# #{category}\n\n"
  entries.each do |e|
    content += "- [#{e[:name]}](#{e[:path].strip}) on #{e[:date]}\n"
  end
  content += "\n"
end

File.open('README.md', 'w') { |file| file.write content }

puts " DONE"
