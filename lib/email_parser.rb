# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :emails_raw, :parsed_arr
  def initialize(list)
    @emails_raw = list
    @parsed_arr = []
  end
  def parse 
    temp_arr= @emails_raw.split(" ")
     
    temp_arr.each do |element|
      temp_2d_arr= element.split (",")
      temp_2d_arr.each do |address| 
        @parsed_arr << address
      end
    end
    return @parsed_arr
  end
end