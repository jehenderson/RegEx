def matched_captures textList, regex
  textList.map do |text|
    "#{text} contains #{text.scan(regex)}"
  end
end

# Write a regex that matches any word that begins with b and ends with an e,
# and has any number of letters in-between. You may limit your regex to
# lowercase letters. Test it with these strings.

string_1 = ['To be or not to be',
'Be a busy bee',
'I brake for animals.']
regex_1 = /\bb[a-z]*e\b/

puts matched_captures string_1, regex_1

# Write a regex that matches any line of text that ends with a ?.
# Test it with these strings.

string_2 = ['What\'s up, doc?',
'Say what? No way.',
'?',
'Who? What? Where? When? How?']
regex_2 = /\?$/

puts matched_captures string_2, regex_2

# Write a regex that matches any line of text that ends with a ?,
# but does not match a line that consists entirely of a single ?.
# Test it with the strings from the previous exercise.
regex_3 = /.+\?$/

puts matched_captures string_2, regex_3

# Write a regex that matches any line of text that contains nothing but a URL.
# For this exercise, a URL begins with http:// or https://, and continues until
# it detects a whitespace character or end of line.
# Test your regex with these strings:

string_3 = ['http://launchschool.com/',
'https://mail.google.com/mail/u/0/#inbox',
'htpps://example.com',
'Go to http://launchschool.com/',
'https://user.example.com/test.cgi?a=p&c=0&t=0&g=0 hello',
'    http://launchschool.com/']
regex_4 = /^https?:\/\/\S*$/

puts matched_captures string_3, regex_4

# Modify your regex from the previous exercise so the URL can have optional
# leading or trailing whitespace, but is otherwise on a line by itself.
# To test your regex with trailing whitespace, you must add some spaces to the
# end of some lines in your sample text.

regex_5 = /^\s*https?:\/\/\S*\s*$/

puts matched_captures string_3, regex_5

# Modify your regex from the previous exercise so the URL can appear anywhere
# on each line, so long as it begins at a word boundary.

regex_6 = /\bhttps?:\/\/\S*/

puts matched_captures string_3, regex_6
