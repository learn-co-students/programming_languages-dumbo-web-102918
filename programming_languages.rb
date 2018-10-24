require "pry"
def reformat_languages(languages)
  new_hash={}
  languages.each do |language_style, language_names|
    type= language_style 
    #new_hash[language_name]= {
      language_names.map do |language_name, language_properties|
        if new_hash.include?(language_name)
          new_hash[language_name][:style] << language_style
      else new_hash[language_name]= {:type => language_properties[:type], :style => [language_style]}
    end
end
end 
new_hash
end 
