# Write your code here.
def dictionary

dictionary = {"hello" => "hi",
  "to" => '2',
  "two" => '2',
  "too" => '2',
  "for" => '4',
  "four" => '4',
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"}
end

def word_substituter(string)

  words_in_dict = dictionary.keys
  substitutes_in_dict = dictionary.values

  string_array = string.split(" ")
  new_string_array = []

  string_array.each do |word|

    if words_in_dict.index(word.downcase) != nil
      new_string_array.push(substitutes_in_dict[words_in_dict.index(word.downcase)])
    else
      new_string_array.push(word)
    end
  end

  new_string = new_string_array.join(" ")
  new_string
end

def bulk_tweet_shortener(array)

  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)

  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)

  new_tweet = selective_tweet_shortener(tweet)

  if new_tweet.length > 140
    truncated_tweet = new_tweet[0...137] + "..."
  else
    new_tweet
  end

end
