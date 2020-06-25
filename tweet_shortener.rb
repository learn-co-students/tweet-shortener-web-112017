
def dictionary
{
  "hello" => 'hi',
  "to" => '2',
  "two" => '2',
  "too" => '2',
  "for" => '4',
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@",
  "and" => "&"
}
end

def word_substituter(string)
  string_array = string.split(" ").collect {
    |word|
    if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
    else
      word
    end
  }
  string_array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each {
    |string|
    puts word_substituter(string)
  }
end

def selective_tweet_shortener(string)
  if string.length > 140
    word_substituter(string)
  else
    string
  end
end

def shortened_tweet_truncator (string)
    if string.length > 140
      string = string.slice(0, 137)
      string += "..."
    end
  string
end
