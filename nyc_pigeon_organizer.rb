def nyc_pigeon_organizer(data)
  pigion_list = {}
  data.each do |color_gender_lives, value|
    value.each do |stats, all_names| 
      all_names.each do |name|
        if pigion_list[name] == nil 
          pigion_list[name] = {}
        end 
        if pigion_list[name][color_gender_lives] == nil
          pigion_list[name][color_gender_lives] = []
        end 
        pigion_list[name][color_gender_lives].push(stats.to_s)
      end 
    end
  end
  pigion_list
end
