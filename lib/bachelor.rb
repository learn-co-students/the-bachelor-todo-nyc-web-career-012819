def get_first_name_of_season_winner(data, season)
  dog = nil
  data.each do |s,r|
    if s == season
      r.each do |x|
        if x["status"] == "Winner"
          dog = x["name"].split.first
        end
      end
    end
  end
dog
end

def get_contestant_name(data, occupation)
  dog = nil
  data.each do |x,y|
    y.each do |k|
      if k["occupation"] == occupation
        dog = k["name"]
      end
    end
  end
  dog
end

def count_contestants_by_hometown(data, hometown)
  dog = []
  data.each do |x,y|
    y.each do |k|
      if k["hometown"] == hometown
        dog << k["hometown"]
      end
    end
  end
  dog.length
end

def get_occupation(data, hometown)
  dog = []
  data.each do |x,y|
    y.each do |k|
      k.each do |m,n|
      if n == hometown
        dog << k["occupation"]
      end
    end
  end
end
dog.first
end

def get_average_age_for_season(data, season)
  dog = []
  sum = 0
  data.each do |s,r|
    if s == season
      r.each do |x|
        dog << x["age"].to_f
      end
    end
  end
  dog.each {|i| sum += i}
  final = sum/dog.length.to_f
  final.round
end
