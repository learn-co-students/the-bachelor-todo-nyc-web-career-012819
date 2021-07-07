require 'pry'

def get_first_name_of_season_winner(data, season)
  i = 0
  while i < data[season].length
    if data[season][i].values.include?("Winner")
      return data[season][i]["name"].split[0]
    else
      i = i +1
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_num, array|
    array.each do |person|
      if person["occupation"]==occupation
        return person["name"]
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season_num, array|
    array.each do |person|
      if person["hometown"]== hometown
        counter=counter + 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season_num, array|
    array.each do |person|
      if person["hometown"]==hometown
        return person["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age=0
  number_contestants=0
  i = 0
  average = 0

  while i < data[season].length
    total_age += data[season][i]["age"].to_i
    number_contestants+=1
    i+=1
  end
  average = (total_age/number_contestants.to_f)
  return average.round
end
