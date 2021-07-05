require 'pry'

def get_first_name_of_season_winner(data, season)
  winner = ""
  i = 0
  data.each do |season_name, season_data|
    if season_name == season
      season_data.each do |list|
        while i < list.length
          if (data[season_name][i]["status"] == "Winner")
            winner_arr = data[season_name][i]["name"].split(" ")
            winner = winner_arr[0]
            i += 1
          else
            i += 1
          end
        end
        end
      end
    end
    winner
  end

def get_contestant_name(data, occupation)
  contestant = ""
  data.each do |season_name, season_array|
    i = 0
    while i < season_array.length
      season_array[i].each do |attr, info|
        if info == occupation
          contestant = data[season_name][i]["name"]
        end
      end
      i += 1
    end
  end
  contestant
end

def count_contestants_by_hometown(data, hometown)
  hometown_number = 0
  data.each do |season_name, season_array|
    i = 0
    while i < season_array.length
      season_array[i].each do |attr, info|
        if info == hometown
          hometown_number += 1
        end
      end
      i += 1
    end
  end
  hometown_number
end

def get_occupation(data, hometown)
  contestant = []
  data.each do |season_name, season_array|
    i = 0
    while i < season_array.length
      season_array[i].each do |attr, info|
        if info == hometown
          contestant << data[season_name][i]["occupation"]
        end
      end
      i += 1
    end
  end
  contestant[0]
end

def get_average_age_for_season(data, season)
  ages = []
  average = 0
  data.each do |season_name, season_array|
    if season_name == season
      i = 0
      while i < season_array.length
        season_array[i].each do |attr, info|
          if attr == "age"
            ages << info.to_i
          end
        end
        i += 1
      end
      average = (ages.reduce(:+)/ages.length.to_f).round
    end
  end
  average
end
