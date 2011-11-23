require 'woccur/version'
require 'woccur/core_ext'
require 'yaml'

module Woccur
  def self.common_words(text = "")
    words = text.gsub(/[^a-zA-Z\'\s]/, " ").split(" ")
    freq = Hash.new(0)

    common_words = YAML::load_file("lib/common.yml")

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
