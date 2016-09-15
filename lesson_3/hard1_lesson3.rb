require 'securerandom'

def uuid_creator
  first = SecureRandom.hex(4)
  second = SecureRandom.hex(2)
  third = SecureRandom.hex(2)
  fourth = SecureRandom.hex(2)
  fifth = SecureRandom.hex(6)

  return "#{first}-#{second}-#{third}-#{fourth}-#{fifth}"
end

#p uuid_creator

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  case dot_separated_words
  when dot_separated_words.size != 4
    puts "false"
  when dot_separated_words.size == 4
    #dot_separated_words.each { |word |}
    if is_an_ip_number?(dot_separated_words)
      true
    end
  end
end

p dot_separated_ip_address?("10.1.1.1")
