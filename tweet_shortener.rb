def dictionary(el)
  dict = {
    "hello" => 'hi',
    "to" => '2',
     "two" => '2',
     "too" => '2',
    "tor" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@" ,
    "and" => "&",
      "Hello" => 'hi',
      "To" => '2',
       "Two" => '2',
       "Too" => '2',
      "For" => '4',
      "Four" => '4',
      'Be' => 'b',
      'You' => 'u',
      "At" => "@" ,
      "And" => "&"
  }

 if dict.keys.include?(el)
  return dict[el]
else

    return el
  end
end
#
# dict = {
#   "Hello" => 'hi',
#   "To" => '2',
#    "Two" => '2',
#    "Too" => '2',
#   "For" => '4',
#   "Four" => '4',
#   'Be' => 'b',
#   'You' => 'u',
#   "At" => "@" ,
#   "And" => "&"
# }
def word_substituter(str)
  result = ""
  word_arr = str.split
  word_arr.each_with_index {|el, idx|
    if idx == 0
      result << dictionary(el)
    else
      result << " " + dictionary(el)
    end
    }

result
end

def bulk_tweet_shortener(arr)

arr.each {|el|
  puts word_substituter(el)
}

end
