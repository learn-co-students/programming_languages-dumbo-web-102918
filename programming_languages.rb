def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, value|
    value.each do |language, attributes|
      attributes.each do |type, val|
        if language == :javascript
          new_hash[language] = {
            :type => val,
            :style => [:oo, :functional]
          }
        else
          new_hash[language] = {
            :type => val,
            :style => [style]
          }
        end
      end
    end
  end
  new_hash
end
