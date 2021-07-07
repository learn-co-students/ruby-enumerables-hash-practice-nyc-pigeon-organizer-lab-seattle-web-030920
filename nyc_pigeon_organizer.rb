def nyc_pigeon_organizer(data)
  new_data = {}
  names = data[:gender][:male] + data[:gender][:female]
  names.each do |name|
    new_data[name] = {}
    data.reduce({}) do |memo_1, (key_1, value_1)|
      new_data[name][key_1] = []
      value_1.reduce({}) do |memo_2, (key_2, value_2)|
        if value_2.include?(name)
          new_data[name][key_1] << key_2.to_s
        end
        memo_2
      end
      memo_1
    end
  end
  new_data
end

# pigeon_data = {:color => {:brown => ["Luca"], :black => ["Lola"],}, :gender => {:male => ["Luca"], :female => ["Lola"]},
#                 :lives => {"Central Park" => ["Lola"], "Library" => ["Luca"]}}
