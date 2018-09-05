def dictionary 
	dict = {
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

def word_substituter(tweet)
	dict = dictionary
	words = tweet.split(" ")
	edit = words.collect do |word|
		if dict.key?(word.downcase)
			new_word = dict[word.downcase]
			word = new_word
		else 
			word
		end
	end
	edit.join(" ")
end

def bulk_tweet_shortener(tweets)
	tweets.each do |tweet| 
		puts word_substituter(tweet)
	end
end

def selective_tweet_shortener(tweet)
	if tweet_length(tweet) > 140
		word_substituter(tweet)
	else
		tweet
	end
	
end

def shortened_tweet_truncator(tweet)
	if tweet_length(tweet) <= 140
		tweet
	else
		tweet[0...137] + "..."
	end

end

def tweet_length(tweet) 
	tweet.split("").size
end