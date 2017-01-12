#
# Usage: ruby sorted-words.rb swedish-word-list
#

filename = ARGV[0]

# Reads the words from a given file, removes surrounding spaces and rejects
# words that contains an uppercase letter (since they are probably names,
# not words
def words(filename)
  File.readlines(filename, encoding: 'iso-8859-1').
    map { |line| line.strip }.
    reject { |word| word != word.downcase }
end

# Find the words matching the criteria
matches = words(filename).
  select { |word| word.size == 6 }.
  select { |word| word.chars.sort == word.chars }

# Print the matching words
puts matches


