require 'pry'
def dictionary
  words = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  array = tweet.split()
  array = array.map do |ele|
    if dictionary.keys.include?(ele.downcase)
      ele = dictionary[ele.downcase]
    else
      ele = ele
    end
  end

  return array.join(" ")
end

def bulk_tweet_shortener(tweets_array)
  tweets_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  return word_substituter(tweet) if tweet.size > 140
  tweet
end

def shortened_tweet_truncator(tweet)
  tweet = word_substituter(tweet)

  return tweet = "#{tweet[0..136]}..." if tweet.size > 140
  tweet
end
