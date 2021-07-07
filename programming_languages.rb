def reformat_languages(languages)
  new_hash = {}
  languages.each do |category, language|
    language.each do |lang, type|
      type.each do |key, val|
        if lang == :javascript 
          new_hash[lang] = {
            :type => val,
            :style => [:oo, :functional]
          }
        else
          new_hash[lang] = {
            :type => val,
            :style => [category]
          }
        end 
      end 
    end 
  end 
  new_hash
end 