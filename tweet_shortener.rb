# Write your code here.

def dictionary()
  dict =
  {"hello" => "hi",
   "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    'be' => 'b',
    'you' => 'u',
    'at' => '@',
    'and' => '&'}

end
def word_substituter(tweet)
  dict = dictionary()
  tweet_words = tweet.split(" ")
  tweet_words.map{|word| if dict[word.downcase] then dict[word.downcase] else word end}.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  selective_tweet_shortener(tweet).length > 140 ? selective_tweet_shortener(tweet)[0..139] : tweet
end
