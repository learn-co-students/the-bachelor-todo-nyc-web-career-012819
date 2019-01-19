require "pry"
def get_first_name_of_season_winner(data, season)
  # code here
  winner = " "
  first_name = []
  data.each{|season_no, info|
    if season == season_no
      info.each{ |d|
        d.each {|keys, v|
          if keys == "status" and v == "Winner"
            winner = d["name"]
          end
        }
      }
    end
  }
  first_name = winner.split(" ")
  first_name[0]
end

def get_contestant_name(data, occupation)
  # code here
  contestant_name = " "
  data.each{|season_no, info|
    info.each{|d|
      d.each{|keys, v|
        if keys == "occupation" and v == occupation
          contestant_name = d["name"]
        end
      }
    }
  }
  contestant_name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each{|season_no, info|
    info.each{|d|
      if d["hometown"] == hometown
        counter += 1
      end
    }
  }
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each{|season_no, info|
    info.each{|d|
      if d["hometown"] == hometown
        return d["occupation"]
      end
    }
  }
end

def get_average_age_for_season(data, season)
  # code here
  counter = 0
  total_age = 0
  avg_age = 0
  data.each{|season_no, info|
    if season == season_no
      info.each{|d|
        total_age += d["age"].to_f
        counter += 1
      }
      avg_age = total_age/counter
    end
  }
  avg_age.round
end
