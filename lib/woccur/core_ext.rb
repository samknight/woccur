String.class_eval do
  def common_words
    Woccur.common_words(self)
  end
end