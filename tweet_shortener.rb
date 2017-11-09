# Write your code here.

def dictionary
dictionary = {
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

def word_substituter(string)
    array = string.split(/ /)
    array.map! do |item|
        dictionary.fetch(item.downcase, item)
    end
    array.join(" ")
end

def bulk_tweet_shortener(array)
    array.map! do |item|
    puts word_substituter(item)
    end
end

def selective_tweet_shortener(string)
      if string.length > 140
      word_substituter(string)
      else
      string
  end
end

def shortened_tweet_truncator(string)
    selective_tweet_shortener(string)
    if string.length > 140
        string[0..136] + "..."
    else
       string
 end
end
    
