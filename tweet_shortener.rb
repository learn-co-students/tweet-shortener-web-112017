# Write your code here.
def dictionary
  {
    "hello" => 'hi',
    "to, two, too" => '2',
    "for, four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  string_arr = string.split
  dictionary.each do |key, value|
    string_arr.each_with_index do |word, index|
      if key.include?(word.downcase) && word.length != 1
        string_arr[index] = value
      end
    end
  end
  return string_arr.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |string|
    puts word_substituter(string)
  end
end

def selective_tweet_shortener(string)
  if string.length > 140
    word_substituter(string)
  else
    string
  end
end

def shortened_tweet_truncator(string)
  if string.length > 140
    string[137] = "."
    string[138] = "."
    string[139] = "."
    string[140..-1] = ""
  end
  string
end
