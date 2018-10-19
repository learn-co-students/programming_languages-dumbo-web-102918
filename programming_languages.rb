def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |key,val|
    
    val.each do |name,type|
      if !new_hash.include?(name)
        new_hash[name] = type
        new_hash[name][:style] = [key]
      else
        new_hash[name][:style].push(key)
      end
    end 
    
  end
  return new_hash
end
