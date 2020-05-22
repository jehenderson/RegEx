def matched_captures textList, regex
  textList.map do |text|
    "#{text} contains #{text.scan(regex)}"
  end
end
# Write a regex that matches the word The when it occurs at the beginning of a
# line. Test it with these strings:

test_strings_1 = ['The lazy cat sleeps.', 'The number 623 is not a word.',
  'Then, we went to the movies.', 'Ah. The bus has arrived.']
puts matched_captures test_strings_1, /^The\b/

# Write a regex that matches the word cat when it occurs at the end of a line.
# Test it with these strings:

test_strings_2 = ['The lazy cat sleeps', 'The number 623 is not a cat',
  'The Alaskan drives a snowcat']
puts matched_captures test_strings_2, /\bcat$/

# Write a regex that matches any three-letter word; a word is any string
# comprised entirely of letters. You can use these test strings.

test_strings_3 = ['reds and blues', 'The lazy cat sleeps.',
  'The number 623 is not a word. Or is it?']
puts matched_captures test_strings_3, /\b[a-z][a-z][a-z]\b/i

# Challenge: Write a regex that matches an entire line of text that consists
# of exactly 3 words as follows:
#
# The first word is A or The.
# There is a single space between the first and second words.
# The second word is any 4-letter word.
# There is a single space between the second and third words.
# The third word -- the last word -- is either dog or cat.
# Test your solution with these strings:

test_strings_4 = ['A grey cat', 'The lazy dog', 'The white cat', 'A loud dog',
  'Go away dog', 'The ugly rat', 'The lazy, loud dog']
regex_4 = /^(A|The) [a-zA-z][a-zA-z][a-zA-z][a-zA-z] (dog|cat)$/
puts matched_captures test_strings_4, regex_4
