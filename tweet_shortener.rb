require 'pry'

def word_substituter(tweet)
  #dictionary of long_word keys and short_word values
  long_words = {
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
  #word substition mechanism
  tweet_array = tweet.split(" ")
  short_array =[]
  tweet_array.each do |tweet_word|
    if long_words.has_key?(tweet_word)
      short_array.push(long_words[tweet_word])
    elsif long_words.has_key?(tweet_word.downcase)
      short_array.push(long_words[tweet_word.downcase])
    else
      short_array.push(tweet_word)
    end
  end
  short_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts "#{word_substituter(tweet)}"
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
  selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet[137..tweet.length] = "..."
    tweet
  else
    tweet
  end
end
