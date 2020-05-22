def matched_captures textList, regex
  textList.map do |text|
    "#{text} contains #{text.scan(regex)}"
  end
end

# Write a regex that matches any sequence of three characters delimited by
# whitespace characters. Test it with these strings:

test_strings_1 = ['reds and blues', 'the lazy cat sleeps']
puts matched_captures test_strings_1, /\s...\s/

# Test the pattern /\s...\s/ from the previous exercise against this text
# (be sure to delete the previous text first):

test_strings_2 = ['Doc in a big red box.', 'Hup! 2 3 4']
puts matched_captures test_strings_2, /\s...\s/

# Write a regex that matches any four digit hexadecimal number that is both
# preceded and followed by whitespace. Note that 0x1234 is not a hexadecimal
# number in this exercise: there is no space before the number 1234.

test_strings_3 = ['Hello 4567 bye CDEF - cdef', '0x1234 0x5678 0xABCD', '1F8A done']
puts matched_captures test_strings_3, /\s\h\h\h\h\s/

# Write a regex that matches any sequence of three letters.
# Test it with these strings:

test_strings_4 = ['The red d0g chases the b1ack cat.', 'a_b c_d']
puts matched_captures test_strings_4, /[a-zA-Z][a-zA-Z][a-zA-Z]/
