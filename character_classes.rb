# Write a regex that matches uppercase or lowercase Ks or a lowercase s.
# Test it with these strings:
def matched_captures textList, regex
  textList.map do |text|
    "#{text} contains #{text.scan(regex)}"
  end
end

# puts matched_captures ['Kitchen Kaboodle', 'Reds and blues', 'kitchen Servers'], /[Kks]/

# Write a regex that matches any of the strings cat, cot, cut, bat, bot, or but,
# regardless of case. Test it with this text:
text = ['My cats, Butterscotch and Pudding, like to'\
' sleep on my cot with me, but they cut my sleep'\
' short with acrobatics when breakfast time rolls'\
' around. I need a robotic cat feeder.']

puts matched_captures text, /[bc][aou]t/i

# Base 20 digits include the decimal digits 0 through 9, and the letters A
# through J in upper or lowercase. Write a regex that matches base 20 digits.
# Test it with these strings:
base20 = ['0xDEADBEEF', '1234.5678', 'Jamaica', 'plow ahead']
regex = /[0-9][a-j][A-J]/

puts matched_captures base20, /[0-9a-jA-J]/

# Write a regex that matches any letter except x or X. Test it with these strings:
not_x = ['0x1234' ,
  'Too many XXXXXXXXXXxxxxxxXXXXXXXXXXXX to count.',
  'The quick brown fox jumps over the lazy dog',
  'THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG']

puts matched_captures not_x, /[a-wyzA-WYZ]/

# Write a regex that matches any character that is not a letter.
# Test it with these strings:
test = ['0x1234abcd', '1,000,000,000s and 1,000,000,000s.' ,'THE quick BROWN fox JUMPS over THE lazy DOG!']
puts matched_captures test, /[^a-z]/i

# Challenge: write a regex that matches a string that looks like a simple negated
# character class range, e.g., '[^a-z]'. (Your answer should match precisely
# six characters.) Test it with these strings:

strings = ['The regex /[^a-z]/i matches any character that is',
'not a letter. Similarly, /[^0-9]/ matches any',
'non-digit while /[^A-Z]/ matches any character',
'that is not an uppercase letter. Beware: /[^+-<]/',
'is at best obscure, and may even be wrong.']
# incomplete, start here.
# puts matched_captures strings, /\[|\^[0-9A-Za-z]|-|[0-9A-Za-z]\]/
