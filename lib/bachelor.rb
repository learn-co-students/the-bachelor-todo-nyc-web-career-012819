def get_first_name_of_season_winner(data, season)
  # code here
  winner_name = Array.new
  data.each do |season_num, contestants_array|
    if season == season_num
      i = 0
      while i < contestants_array.length
        if contestants_array[i]["status"] == "Winner"
          winner_name << contestants_array[i]["name"].split[0]
        end
        i += 1
      end
    end
  end
  return winner_name[0]
  # another way---------------
#  i = 0
#  while i < data[season].length
#    if data[season][i].values.include?("Winner")
#      return data[season][i]["name"].split[0]
#    else
#      i = i +1
#    end
#  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season_num, array|
    array.each do |x|
      if x["occupation"] == occupation
        return x["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season_num, array|
    array.each do |x|
      if x["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_num, array|
    array.each do |x|
      if x["hometown"] == hometown
        return x["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age_sum = 0
  counter = 0
  i = 0
  while i < data[season].length
    counter += 1
    age_sum += data[season][i]["age"].to_f
    i += 1
  end
  return (age_sum / counter).round
end
