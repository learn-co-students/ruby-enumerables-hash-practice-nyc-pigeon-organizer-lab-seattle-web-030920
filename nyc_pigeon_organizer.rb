def nyc_pigeon_organizer(data)
  # write your code here!
  pigeons = {}
  data[:gender].each { |gender|
    gender.each { |m_or_f|
    index = 1
    name = 0
    while index < gender.length
      while name < gender[index].length
        pigeons[gender[index][name]] = {
          :color => [],
          :gender => [gender[index - 1].to_s],
          :lives => []
        }
        name += 1
      end
      index += 1
    end
      }
    }
  names = pigeons.keys
  #pp names
  data[:color].each { |color|
    count = 0
    while count < names.length
      #pp color[1]
      #pp color[0].to_s
      if color[1].include?(names[count])
        pigeons[names[count]][:color] << color[0].to_s
      end
      count += 1
    end
  }
  data[:lives].each { |lives|
    count = 0
    while count < names.length
      if lives[1].include?(names[count])
        pigeons[names[count]][:lives] << lives[0].to_s
      end
      count += 1
    end
  }
  pp pigeons
  pigeons 
end
