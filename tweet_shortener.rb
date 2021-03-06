# Write your code here.
phrase = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
def dictionary
  converst = {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"
  }
end

def word_substituter(tweet)
  tweet.split(" ").map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.map do |phrase|
    puts word_substituter(phrase)
  end
end
   
   def selective_tweet_shortener(tweet_four)
       if tweet_four.chars.length >140
         word_substituter(tweet_four)
       else 
         tweet_four
     end
   end
   
   def shortened_tweet_truncator(tweet)
       if word_substituter(tweet).chars.length > 140
        truncated =  word_substituter(tweet).chars[0..136].push("...").join("")
       else
         word_substituter(tweet)
       end
   end 
     