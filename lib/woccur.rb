require 'woccur/version'
require 'woccur/core_ext'
require 'yaml'

module Woccur
  def self.common_words(text = "")
    words = text.gsub(/[^a-zA-Z\'\s]/, " ").split(" ")
    freq = Hash.new(0)

    common_words = %w(
    a about after again against all an another any and are as at
    be being been before but by
    can could
    did do don't down
    each 
    few from for
    get got great
    had has have he her here his him himself hers how
    i if i'm in into is it it's
    just
    like
    made me more most my
    no not
    of off on once one only or other our out over own
    said she should so some such 
    than that the their them then there these they this those through to too
    under until up 
    very
    was wasn't we were we're what when where which while who why will with would wouldn't
    you your)

    words.each do |word|
      word = word.downcase  
      if word == ""
        next
      end

      if !common_words.include? word
        freq[word] = freq[word] +1
      end
    end

    freq.sort_by {|k, v| -v}
  end
end
