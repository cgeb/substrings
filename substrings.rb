dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  string.downcase!
  hash = {}
  dictionary.each {|word| hash[word] = string.scan(word).length}
  hash.delete_if {|key, value| value == 0}
  return hash
end

substrings("Howdy partner, sit down! How's it going?", dictionary)