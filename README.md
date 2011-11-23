# Woccur - Find the most commonly used words in a string

This gem allows you find the most commonly used words in for a string or block of text

## How to Use

You can use this gem in 2 ways. You can use it as an extension on the string class or as it's own module

### Install

	gem install woccur
	
### String extension

	"String of text".common_words
	
### Woccur module

	Woccur.common_words("String of text")
	
### Output Results

	@text.common_words.each do |word, count|
		"#{word} - #{count}"
	end