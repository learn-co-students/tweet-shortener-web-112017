# Write your code here.
# "hello" becomes 'hi'
# "to, two, too" become '2'
# "for, four" become '4'
# 'be' becomes 'b'
# 'you' becomes 'u'
# "at" becomes "@"
# "and" becomes "&"


def word_substituter(tweet)
  dictionary = {
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
  tweet = tweet.split(' ')
  tweet.map! { |t|
    #puts t

    if dictionary.keys.include?(t.downcase)
      #puts dictionary[t]
      #puts "^should be in string"
      t = dictionary[t.downcase]
    else
      t
    end
     }
     return tweet.join(' ')
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.map! { |e| word_substituter(e) }

  tweet_array.each {|t| puts t}
end


def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    return tweet
  else
    return word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140

    tweet = word_substituter(tweet)
    #puts tweet
    #puts tweet.length
    if tweet.length > 140
      tweet = tweet.slice(0, 140)
    #  puts tweet
    end
  end
  tweet
end
