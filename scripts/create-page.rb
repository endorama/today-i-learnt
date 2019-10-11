#!/usr/bin/env ruby

require 'yaml'
require_relative './page'

page = ARGV[0]
  source = ARGV[1]
# puts "Creating #{page}"

category = File.dirname page
name = File.basename(page).tr('-', '_').downcase
title = name.tr('_', ' ').tr('-', ' ').capitalize
date = `date +%Y-%m-%d`.strip
path = "tils/#{category}/#{date}-#{name}.md"

puts "#{path}"

page = Page.new(category, date, title, path)
# puts page.inspect

`mkdir -p #{File.dirname(path)}`
`touch #{path}`

header = <<EOF
# #{title}
 
<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>#{category}</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>#{date}</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="#{source}">source</a></td>
    </tr>
  </tbody>
</table>

EOF

File.open(path, 'w') { |file| file.write header }

pages = YAML.load_file('.pages.yml') || []
pages << page
pages.sort_by!(&:category).uniq!(&:title)
File.open('.pages.yml', 'w') {|f| f.write pages.to_yaml }
