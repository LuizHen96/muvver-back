class Travel < ApplicationRecord
  belongs_to :user
  serialize :waypoints, Array
  validates :vehicle, presence: true
  validates :origin, presence: true
  validates :destination, presence: true
  validate :valid_dates

  private
  def valid_dates
    if(departure_date.presence && arrive_date)
      if departure_date > arrive_date
        self.errors.add :departure_date, ' Departure date cant be after arrival date'
      end
    else
      self.errors.add ' Date is missing'
    end    
  end

end
