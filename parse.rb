require_relative 'pdf.rb'
require_relative 'xml.rb'


pdf = PDF::Document.new(filename)
pdf.parse

xml = XML::Document.new(filename)
xml.parse
