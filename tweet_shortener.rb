def word_substituter(string)
dictionary = {hello: "hi", to: "2", too: "2", two: "2", four: "4", For: "4", for: "4", be: "b", you: "u", at: "@", and: "&"}

#tweet = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

string = string.split(" ")
final = []
  string.each do |word|
    dictionary.each do |key, value|
       if word == key.to_s
         word = value
       end
    end
    final << word
   end
   return final.join(" ")
end

def bulk_tweet_shortener(tweets)
  #bulk_final = []
  tweets.each do |tweet|
     puts word_substituter(tweet)
  end
  #puts bulk_final.join(" ")
end

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    return tweet
  else
    return word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length <= 140
    return tweet
  else
    return word_substituter(tweet)[0..136] + "..."
  end
end
