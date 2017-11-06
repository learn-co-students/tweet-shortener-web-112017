# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  tweet_array = string.split(" ")
  tweet_array.each_with_index do |word, index|
    dictionary.keys.each do |k|
      if k == word
      tweet_array[index] = dictionary[k]
    end
  end
end
  tweet_array.join(" ")
end




def bulk_tweet_shortener(array)
  array.each_with_index do |tweet, index|
    bulk_tweet_array = tweet.split(" ")
    bulk_tweet_array.each_with_index  do |word, index|
      dictionary.keys.each do |k|
        if k == word.downcase
          bulk_tweet_array[index] = dictionary[k]
      end
      end
      end
      shortened_tweet = bulk_tweet_array.join(" ")
    puts shortened_tweet
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
  if tweet.length > 140
    tweet = word_substituter(tweet)
    tweet[0..136] + "..."
  else
    tweet
  end

end
