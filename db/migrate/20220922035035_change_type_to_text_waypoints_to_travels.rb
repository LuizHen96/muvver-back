class ChangeTypeToTextWaypointsToTravels < ActiveRecord::Migration[7.0]
  def change
    change_column :travels, :waypoints, :text
  end
end
