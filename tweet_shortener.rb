require 'pry'

# Write your code here.
def dictionary
  {
    hello: "hi",
    to: "2",
    two: "2",
    too: "2",
    four: "4",
    for: "4",
    be: "b",
    you: "u",
    at: "@",
    and: "&",
  }
end

def word_substituter(tweet)
  new_tweet = tweet.split
  dict = dictionary
  new_tweet.each_with_index do |word, index|
    # binding.pry
    if dict.key?(word.downcase.to_sym)
    # if word == dict.select {|key, substitute| key.to_s}
      new_tweet[index] = dict[word.downcase.to_sym]
      # binding.pry
    end
  end
  new_tweet = new_tweet.join(" ")
  # binding.pry
end
# word_substituter("hello be at you You u four for two too to To and :: These words should not get changed. ")


def bulk_tweet_shortener(tweets)
  tweets.each {|tweet| puts "#{word_substituter(tweet)}"}
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ?
    word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet = word_substituter(tweet)
    if tweet.length > 140
      tweet = tweet[0..139]
    end
  else
    tweet
  end
end
