require "pry"
def get_first_name_of_season_winner(data,season)
  data[season].each do |contestant_info|
    if contestant_info["status"].downcase == "winner"
      return contestant_info["name"].split(" ").first
    end
  end
end


def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant_info|
      if contestant_info["occupation"] == occupation
        return contestant_info["name"]
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  amount = 0
  data.each do |season, contestants|
    contestants.each do |contestant_info|
      if contestant_info["hometown"] == hometown
        # binding.pry
       amount += 1 #(return amount+=1 and amount +=1 diffrences)
      end
    end
  end
  amount #returning the FULL amount after all the loops are ended
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant_info|
      if contestant_info["hometown"] == hometown
        return contestant_info["occupation"]
      end
    end
  end
end


def get_average_age_for_season(data, season)
  total_age = 0
  contestant_count = 0
  data[season].each do |contestant_info|
    total_age += (contestant_info['age']).to_i
    contestant_count += 1
  end
  (total_age/contestant_count.to_f).round
end




#

#
#
#
#
# def get_average_age_for_season(data, season)
#   # code here
#   total_age = 0
#   numberOfContestants = 0
#   data[season].each do |contestant_hash|
#     total_age += (contestant_hash["age"]).to_i
#     numberOfContestants += 1
#   end
#   (total_age/numberOfContestants.to_f).round(0)
# end
