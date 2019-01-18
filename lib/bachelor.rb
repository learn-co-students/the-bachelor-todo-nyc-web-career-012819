
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
  data.e
end

def get_average_age_for_season(data, season)
  # code here
end
