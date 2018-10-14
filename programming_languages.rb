def reformat_languages(languages)
 oo_hash = {}
  functional_hash = {}

  total_keys = languages[:oo].keys + languages[:functional].keys

  dup_langs = total_keys.select{|language| total_keys.count(language) > 1}

  languages[:oo].each do |key, values|
    values.each{|k, v|oo_hash[key] = {:type => v, :style => [:oo]}}
  end

  languages[:functional].each do |key, values|
    values.each{|k, v|functional_hash[key] = {:type => v, :style => [:functional]}}
  end

  new_hash = functional_hash.merge(oo_hash)

  new_hash.each do |keys, values|
    new_hash[keys][:style] += [:functional] if dup_langs.include?(keys)
  end

new_hash
end
