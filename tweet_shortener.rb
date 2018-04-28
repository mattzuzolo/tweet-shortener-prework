# Write your code here.

def dictionary
  
  word_changes = { 
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


def word_substituter (tweet)
  
  changes_hash_keys = dictionary.keys
  changes_hash_values = dictionary.values
  updated_tweet_array = []
  the_index = nil
  
    tweet.split(" ").map do |word|
        if dictionary.keys.include?(word.downcase)
          the_index = changes_hash_keys.index {|i| i.include?(word.downcase)}
          updated_tweet_array << changes_hash_values[the_index]
        else
          updated_tweet_array << word
        end
    end
    updated_tweet_array.join(" ")
    
end


def bulk_tweet_shortener (tweet_list)
    tweet_list.each do |message|
      puts word_substituter(message)
    end  
end



def selective_tweet_shortener (tweet)
  
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
  
end



def shortened_tweet_truncator (tweet)
  
  if tweet.length > 140
      new_tweet = word_substituter(tweet)
      
        if new_tweet.length > 140
          new_tweet[0..136] + "..."
        else
          new_tweet
        end
  else 
    tweet
      
  end 
end  
      
      
        



















