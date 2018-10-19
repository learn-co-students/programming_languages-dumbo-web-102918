require "pry"
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, lang_hash|
    lang_hash.each do |lang, type_hash|
      type_hash.each do |key, val|

   if !new_hash[lang]
     new_hash[lang] = {}
     
   end
   new_hash[lang][:style] ||= []
   new_hash[lang][:style] << style
   if !new_hash[lang][type_hash]
     new_hash[lang][key] = val
   end
 end 
  end
  end

  new_hash
end
