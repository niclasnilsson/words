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

# Checks if a single word is sorted
def sorted?(word)
  word.chars.sort == word.chars
end

# The main stuff:
# Find the words matching the criteria
matches = words(filename).
  select { |w| w.size == 6 }.
  select { |w| sorted?(w) }

# Print the matching words
puts matches


