require 'pry'

def nyc_pigeon_organizer(data)
  
new_hash={}
inner_hash={}
data.each_key{|key|
inner_hash[key]=[]
}

data.each_key{|key|
  data[key].each_key{ |key2|
    data[key][key2].each{ |name2|
      if new_hash.key?(name2)
        if new_hash[name2].key?(key)
         new_hash[name2][key].push(key2.to_s)
        else
          new_hash[name2][key]=[key2.to_s]
        end
      else
         new_hash[name2]={}
         new_hash[name2][key]=[key2.to_s]
      end
    }
  }
}
new_hash

end