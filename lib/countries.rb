require 'xpath'
require 'xml'

class Countries
  @@Countries_xml = XML::Document.file 'data/countries.xml'

  def self.get_name_by_code(code)
    return "Not found\r\n" unless code =~ /\w{2}\s\s/

    country_xpath = XPath.descendant(:country)[XPath.attr(:COC) == code.gsub(/\s\s/, '')]
    @@Countries_xml.find_first(country_xpath.to_s).content + "\r\n" rescue "Not found\r\n"
  end
end
