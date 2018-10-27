require "pry"

def languages
  languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}
end

def reformat_languages(languages)
  # your code here
  reformatted = {}
  languages.each do |programming, name|
    name.each do |lang_name, type|
      if lang_name == :ruby
        reformatted[lang_name] = {:type => "interpreted", :style => []<<:oo}
      end #if Ruby

      if lang_name == :javascript
        reformatted[lang_name] = {:type => "interpreted", :style => []<< :oo << :functional}
      end #if javascript

      if lang_name == :python
        reformatted[lang_name] = {:type => "interpreted", :style => [] << :oo}
      end #if python

      if lang_name == :java
        reformatted[lang_name] = {:type => "compiled", :style => [] << :oo}
      end #if java

      if lang_name == :clojure
        reformatted[lang_name] = {:type => "compiled", :style => [] << :functional}
      end #if clojure

      if lang_name == :erlang
        reformatted[lang_name] = {:type => "compiled", :style => [] << :functional}
      end #if erlang

      if lang_name == :scala
        reformatted[lang_name] = {:type => "compiled", :style => [] << :functional}
      end #if scala



    end #name
  end #languages
  return reformatted
end

reformat_languages(languages)
