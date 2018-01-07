def dictionary(el)
 dict = {
   "hello" => 'hi',
   "to" => '2',
    "two" => '2',
    "too" => '2',
   "for" => '4',
   "four" => '4',
   'be' => 'b',
   'you' => 'u',
   "at" => "@" ,
   "and" => "&"
 }
 if dict.keys.include?(el)
  return dict[el]
  else
    return el
  end
end

dict = {
  "hello" => 'hi',
  "to" => '2',
   "two" => '2',
   "too" => '2',
  "for" => '4',
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@" ,
  "and" => "&"
}
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

  result = ""
  arr.each_with_index {|el, idx|
    if idx == 0
      result << dictionary(el)
    else
      result << " " + dictionary(el)
    end
    }

puts result

end
