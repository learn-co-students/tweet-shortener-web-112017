require 'pry'
def dictionary(str)
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


def word_substituter(str_1 = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!")
  array = str_1.split()
  new_array = array.map do |element|
    dictionary.each do |key, value|
        element = value if (element == key)
    end
  end

  new_array.join(" ")
  binding.pry
end

word_substituter()
