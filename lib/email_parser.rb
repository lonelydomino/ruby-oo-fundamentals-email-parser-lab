# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    
def initialize(emails)
    @array = emails.split(/[,\s]+/)
end

def parse
    @array.each_with_index do |email, index|
        if email == @array[index + 1]
            @array.delete_at(index + 1)
        end
    end
    @array
end

end