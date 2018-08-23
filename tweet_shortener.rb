tweet1 = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

tweet2 = "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. for real."

tweet_array = [tweet1, tweet2]

def word_substituter(tweet)
  tweet = tweet.split(" ")
  
  dictionary = {
  "hello" => 'hi',
  "to" => '2',
  "two" => '2',
  "too" => '2', 
  'for' => '4',
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@",
  "and" => "&"
}

newlist = []
  tweet.each do |tweet_word|
    if dictionary.keys.include? (tweet_word)
      newlist << dictionary[tweet_word]
    else
      newlist << tweet_word
    end
  end
#puts newlist  

  tweet.each do |tweet_word|
    dictionary.each do |dict_word, shortend_word|
      if tweet_word == dict_word
        index = tweet.index(tweet_word)
        tweet[index] = shortend_word
      end
    end
  end
  tweet.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2', 
    'for' => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }

tweet_array.each do |tweet|
tweet = tweet.split(" ")

      dictionary.each do |dict_word, shortend_word|
        tweet.each do |tweet_word|
          if tweet_word.downcase == dict_word.downcase
            index = tweet.index(tweet_word)
            tweet[index] = shortend_word
          end
        end
    end
  puts tweet.join(" ")
end 
end 

def selective_tweet_shortener(tweet)
   dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2', 
    'for' => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
  
  if tweet.length > 140
    tweet = tweet.split(" ")

      dictionary.each do |dict_word, shortend_word|
        tweet.each do |tweet_word|
          if tweet_word.downcase == dict_word.downcase
            index = tweet.index(tweet_word)
            tweet[index] = shortend_word
          end
        end
      end
  tweet.join(" ")
  else
    tweet 
  end
end

def shortened_tweet_truncator(tweet)
dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2', 
    'for' => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
  
  if tweet.length > 140
    tweet = tweet.split(" ")

      dictionary.each do |dict_word, shortend_word|
        tweet.each do |tweet_word|
          if tweet_word.downcase == dict_word.downcase
            index = tweet.index(tweet_word)
            tweet[index] = shortend_word
          end
        end
      end
   if tweet.join(" ").length <= 140
     return tweet.join(" ")
    else
      tweet = tweet.join(" ")
      tweet = tweet[0..136] + '...'
    end 
  end 
  else
    tweet
  end

