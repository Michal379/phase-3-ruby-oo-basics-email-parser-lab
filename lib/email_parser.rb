# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_reader :emails
        #initializes emails
    def initialize(emails)
      @emails = emails
    end
           #use the uniq to remove duplicated emails
    def parse
      unique_emails = split_emails.uniq
      unique_emails.map(&:strip)
    end
           # [,\s]+, which matches one or more occurrences of 
           #commas or whitespace 
    def split_emails
      emails.split(/[,\s]+/)
    end
  end
  

