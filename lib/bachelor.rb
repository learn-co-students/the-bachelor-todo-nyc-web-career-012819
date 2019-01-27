def get_first_name_of_season_winner(data, season)
  data.each do |season_num, contestants|
    if season_num.to_s == season.to_s
      data[season_num.to_s].each do |contestant|
        if contestant["status"] == "Winner"
          return contestant["name"].split(" ")[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |element|
      if element["occupation"] == occupation
        return element["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  
  data.each do |season, contestants|
    contestants.each do |element|
      if element["hometown"] == hometown
        count += 1
      end
    end
  end
  
  count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |element|
      if element["hometown"] == hometown
        return element["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  count = 0
  age_sum = 0
  
  data.each do |season_num, contestants|
    if season_num.to_s == season.to_s
      data[season_num.to_s].each do |contestant|
        age_sum += contestant["age"].to_i
        count += 1
      end
    end
  end
  
  (age_sum.to_f/count.to_f).round
end
