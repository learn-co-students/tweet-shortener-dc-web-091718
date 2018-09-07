require 'pry'

def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two"=> "2",
    "too"=> "2",
    "for"=> "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  dic_keys = dictionary.keys
    tweet_array = tweet.split(' ')
    new_tweet = tweet_array.collect do |word|
      if dic_keys.include?(word)
        word = dictionary[word]
      else 
        word
      end
    end
    new_tweet.join(' ')
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
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
  shorter_tweet = word_substituter(tweet)
  if shorter_tweet.length > 140
    shortened_tweet = shorter_tweet[0..136]
    shortened_tweet + "..."
  else 
    tweet
  end
end

