path = File.expand_path(File.dirname(__FILE__) + "/../lib/")
$LOAD_PATH.unshift(path) unless $LOAD_PATH.include?(path)
require "woccur"

describe Woccur do
  it "should ignore common words" do
    "A is a common word".common_words.select {|x, y| x == "a" }.empty?.should be_true
  end
  
  it "should count words" do
    "Second has been said for a second time".common_words.select {|x, y| x == "second" }.first.last.should == 2
  end
end