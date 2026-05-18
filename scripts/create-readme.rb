#!/usr/bin/env ruby

require 'yaml'
require_relative './page'

print 'Generating README.md '

tils = YAML.load_file('.pages.yml', permitted_classes: [Page, Symbol]) || []
# puts tils.inspect

content = <<EOF
# TIL - Today I Learned

From an awesome idea got from [jbranchaud](https://github.com/jbranchaud/til), a
repository to collect all the today I learned about the more different topics I
learned.

> [!CAUTION]
> This is reference material I use, for my own personal use.
> Use at your own risk. Instruction may be incomplete, outdated, wrong and may lead to unexpected or undocumented data loss.
> 
> If you decide to use it always properly contextualizing it into the specific task being executed. Apply your
> own judgement and don't trust them to much.

EOF

grouped_tils = tils.group_by(&:category)
grouped_tils.each do |category, entries|
  content += "# #{category}\n\n"
  entries.each do |e|
    print '.'
    # puts "'#{e.title}'"
    content += "- [#{e.title}](#{e.path.strip}) on #{e.date}\n"
  end
  content += "\n"
end

File.open('README.md', 'w') { |file| file.write content }

puts ' DONE'
