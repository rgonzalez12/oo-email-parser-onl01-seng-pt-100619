# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :email_addresses
 
  def initialize(email_addresses)
    @email_addresses = email_addresses
  end

  def parse
    array = []
    array << @email_addresses
    @email_addresses.split(/\s*-\s*/)
      # separate with space 
      # seperate with commas 
      # return unique email addresses
      
    csv_emails.split.collect do |address|
    address.split(',') 
    end
    .flatten.uniq 
  end 
    
  end
end