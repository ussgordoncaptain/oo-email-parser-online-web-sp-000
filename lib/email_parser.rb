# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails_raw, :parsed_arr
  def initialize(list)
    @emails_raw = list
  end
  def parse 
    temp_arr= emails.split(" ")
    final = []
    temp_arr.each do |element|
      temp_2d_arr= element.split (",")
      temp_2d_arr.each do |address| 
        final << address
      end
    end
    return final
  end
end