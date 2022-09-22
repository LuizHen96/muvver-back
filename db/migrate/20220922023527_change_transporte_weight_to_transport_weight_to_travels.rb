class ChangeTransporteWeightToTransportWeightToTravels < ActiveRecord::Migration[7.0]
  def change
    rename_column :travels, :transporte_weight, :transport_weight
  end
end
