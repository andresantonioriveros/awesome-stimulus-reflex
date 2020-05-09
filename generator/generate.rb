require "liquid"
require "yaml"
data = YAML.safe_load(File.read("../data.yml"))
output = Liquid::Template.parse(File.read('./template.liquid')).render!('data' => data)
File.write('../README.md', output)
