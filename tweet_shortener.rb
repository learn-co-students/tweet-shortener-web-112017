# Write your code here.
def dictionary
  {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
  }
end

def  word_substituter(tweet)
  dic = dictionary.keys
  tweet.split(" ").collect do |word|
    if dic.include?(word.downcase)
      word = dictionary[word.downcase]
    end
    word
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  return word_substituter(tweet) if tweet.length > 140
  tweet
end

def shortened_tweet_truncator(tweet)
  return tweet[0...137] + "..." if tweet.length > 140
  tweet
end
