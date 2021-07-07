def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestant|
    if contestant["status"].downcase == "winner"
      return contestant["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        count +=1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # count = 0
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age_of_contestants = 0
  num_of_contestants = 0
  data[season].each do |contestant|
    age_of_contestants += (contestant["age"]).to_i
    num_of_contestants += 1
  end
  (age_of_contestants / num_of_contestants.to_f).round(0)
end
