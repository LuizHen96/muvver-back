module Suggestion
  def self.suggestions(location1, location2)
    travels = Travel.all
    s1 = travels.where(origin: location1, destination: location2).pluck(:waypoints).flatten(1)
    s2 = travels.where(origin: location2, destination: location1).pluck(:waypoints).flatten(1)
    return (s1 + s2).uniq
  end
end
