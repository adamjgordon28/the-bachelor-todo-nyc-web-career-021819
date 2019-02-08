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
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
