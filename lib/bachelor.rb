def get_first_name_of_season_winner(data, season)
  data.each do |show_season, contestant|
   if show_season == season 
     contestant.each do |info|
       info.each do |aspect, reading|
         if info[aspect] == "Winner"
           name_array = info["name"].split(" ")
           return name_array[0]
         end
       end
     end
   end
  end
end

def get_contestant_name(data, occupation)
  data.each do |show_season, contestant|
    contestant.each do |info|
      info.each do |aspect, reading|
        if info["occupation"] == occupation
          return info["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0  
  data.each do |show_season, contestant|
    contestant.each do |info|
        if info["hometown"] == hometown
          counter += 1 
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  counter = 0 
  if counter < 1 
    data.each do |show_season,contestant|
      contestant.each do |info|
        if info["hometown"] == hometown
          return info["occupation"]
         counter += 1
       end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  data.each do |show_season,contestant|
    contestant.each do |info|
      if show_season == season 
        info.each do |aspect, reading|
          age_pool = 0 
          age_pool += info["age"].to_i
          age_pool/info.length
        end
      end
    end
  end
end
