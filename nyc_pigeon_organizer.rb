require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  newHash = {}
  
  data.reduce({}) do |memo1, (key1,hash)| 
      
    hash.reduce({}) do |memo2, (key2,array)|
    
      array.each do |name|
        #key2 still a key not string
        if !newHash[name]
          newHash[name] = {}
        end
        
        if !newHash[name][key1]
           newHash[name][key1] = []
        end 
          newHash[name][key1].push(key2.to_s) 
      
      end
       memo2
  end
  memo1
end    
newHash
  
end

