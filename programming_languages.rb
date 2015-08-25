require "pry"
def reformat_languages(languages)
  # your code here
  hash = {}
  languages.each do |key, value|
    value.each do |k,v|

      if hash[k]
        hash[k][:style] << key
      else
        v[:style] = [key]
        hash[k] = v
      end
    end
  end
  return hash
end
