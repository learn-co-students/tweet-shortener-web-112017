# Write your code here.
def dictionary
    dictionary = {
      "hello": "hi",
      "to": "2",
      "two": "2",
      "too": "2",
      "for": "4",
      "four": "4",
      "be": "b",
      "you": "u",
      "at": "@",
      "and": "&"
    }
end

def word_substituter(string)
  a = string.split(" ")
  a.collect do |word|
    if dictionary.keys.include?(word)
      a[word] = dictionary[word]
    else
      a[word]
    end
  end
  return a.join(" ")
end
