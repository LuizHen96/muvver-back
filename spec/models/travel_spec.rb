require 'rails_helper'

RSpec.describe Travel, type: :model do
  context 'validation tests' do
    it 'ensures vehicle presence' do
      user = User.new(name: 'Name', email: "sample@example.com", password: "12345678").save
      travel = Travel.new(departure_date:"2022-09-22",arrive_date:"2022-09-23", origin:"Campo Grande, MS",destination:"Dourados, MS", 
                waypoints: ["Nova Alvorada do Sul, MS", "Rio Brilhante, MS"], transport_volume:"Envelope", transport_weight:"100kg",minimum_price:"170", user_id: "1").save
      expect(travel).to eq(false)
    end

    it 'ensures departure date presence' do
      user = User.new(name: 'Name', email: "sample@example.com", password: "12345678").save
      travel = Travel.new(vehicle:"Carro", arrive_date:"2022-09-23", origin:"Campo Grande, MS",destination:"Dourados, MS", 
                waypoints: ["Nova Alvorada do Sul, MS", "Rio Brilhante, MS"], transport_volume:"Envelope", transport_weight:"100kg",minimum_price:"170", user_id: "1").save
      expect(travel).to eq(false)
    end

    it 'ensures arrive date presence' do
      user = User.new(name: 'Name', email: "sample@example.com", password: "12345678").save
      travel = Travel.new(vehicle:"Carro",departure_date:"2022-09-22", origin:"Campo Grande, MS",destination:"Dourados, MS", 
                waypoints: ["Nova Alvorada do Sul, MS", "Rio Brilhante, MS"], transport_volume:"Envelope", transport_weight:"100kg",minimum_price:"170", user_id: "1").save
      expect(travel).to eq(false)
    end

    it 'ensures origin presence' do
      user = User.new(name: 'Name', email: "sample@example.com", password: "12345678").save
      travel = Travel.new(vehicle:"Carro",departure_date:"2022-09-22",arrive_date:"2022-09-23", destination:"Dourados, MS", 
                waypoints: ["Nova Alvorada do Sul, MS", "Rio Brilhante, MS"], transport_volume:"Envelope", transport_weight:"100kg",minimum_price:"170", user_id: "1").save
      expect(travel).to eq(false)
    end

    it 'ensures destination presence' do
      user = User.new(name: 'Name', email: "sample@example.com", password: "12345678").save
      travel = Travel.new(vehicle:"Carro",departure_date:"2022-09-22",arrive_date:"2022-09-23", origin:"Campo Grande, MS", 
                waypoints: ["Nova Alvorada do Sul, MS", "Rio Brilhante, MS"], transport_volume:"Envelope", transport_weight:"100kg",minimum_price:"170", user_id: "1").save
      expect(travel).to eq(false)
    end

    it 'User presence' do
      travel = Travel.new(vehicle:"Carro",departure_date:"2022-09-22",arrive_date:"2022-09-23", origin:"Campo Grande, MS",destination:"Dourados, MS", 
                waypoints: ["Nova Alvorada do Sul, MS", "Rio Brilhante, MS"], transport_volume:"Envelope", transport_weight:"100kg",minimum_price:"170").save
      expect(travel).to eq(false)
    end

    it 'Departure date after arrival date' do
      user = User.new(name: 'Name', email: "sample@example.com", password: "12345678").save
      travel = Travel.new(vehicle:"Carro",departure_date:"2022-09-23",arrive_date:"2022-09-22", origin:"Campo Grande, MS",destination:"Dourados, MS", 
                waypoints: ["Nova Alvorada do Sul, MS", "Rio Brilhante, MS"], transport_volume:"Envelope", transport_weight:"100kg",minimum_price:"170", user_id: "1").save
      expect(travel).to eq(false)
    end

    it 'should save successfully' do
      user = User.new(name: 'Name', email: "sample@example.com", password: "12345678").save
      travel = Travel.new(vehicle:"Carro",departure_date:"2022-09-22",arrive_date:"2022-09-23", origin:"Campo Grande, MS",destination:"Dourados, MS", 
                waypoints: ["Nova Alvorada do Sul, MS", "Rio Brilhante, MS"], transport_volume:"Envelope", transport_weight:"100kg",minimum_price:"170", user_id: "1").save
      expect(travel).to eq(true)
    end
  end

end
