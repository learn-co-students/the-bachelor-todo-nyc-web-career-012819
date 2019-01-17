def get_first_name_of_season_winner(data, season)
  array = data[season]
  count = 0
  until count == array.length
  hash = array[count]
  if hash["status"] == "Winner"
    name = hash["name"].split
    return name[0]
  end
  count += 1
end
end

def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
 count = 0
 data.each do |season, array|
   array.each do |contestant|
     if contestant["hometown"] == hometown
       count += 1
     end
   end
 end
 count
end

def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  sum = 0
  array = data[season]
  count = 0
  until count == array.length
  num = array[count]["age"].to_i
    sum += num
    count += 1
  end
  total = sum / array.length.to_f
  total.round
end
