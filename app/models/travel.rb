class Travel < ApplicationRecord
  belongs_to :user
  serialize :waypoints, Array
end
