
require "pry"

def get_first_name_of_season_winner(data, season)
  # code here
  winner = ""
  data[season].each do |x|
    x.each do |info, value|
      if value == "Winner"
        winner = x["name"]
      end
    end
  end
  winner.split[0]
end

def get_contestant_name(data, occupation)
  # code here
  singer = ""
  data.each do |season, contestants|
    contestants.each do |x|
      x.each do |info, value|
        if value == occupation
          singer = x["name"]
      end
      end
    end
  end
  singer
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, contestants|
    contestants.each do |x|
      x.each do |info, value|
        if value == hometown
          count += 1
        end
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  occupation = []
  data.each do |season, contestants|
    contestants.each do |x|
      x.each do |info, value|
        if value == hometown
          occupation << x["occupation"]
        end
      end
    end
  end
  occupation [0]
end

def get_average_age_for_season(data, season)
  # code here
  average_age = get_sum_of_contestants_ages(data, season) / get_contestants_count_in_season(data,season)
end

def get_sum_of_contestants_ages(data, season)
  sum_of_ages = 0
  data.each do |data, seasonz|
      if data == season
        seasonz.each do |x|
          sum_of_ages += x["age"].to_i
          binding.pry
        end
      end
  end
  sum_of_ages
end

def get_contestants_count_in_season(data,season)
  contestants_count = nil
  data.each do |data, seasonz|
    if data == season
      contestants_count = seasonz.size
    end
  end
  contestants_count
end
