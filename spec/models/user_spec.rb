require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'ensures name presence' do
      user = User.new(email: "sample@example.com", password: "12345678").save
      expect(user).to eq(false)
    end

    it 'ensures email presence' do
      user = User.new(name: 'Name', password: "12345678").save
      expect(user).to eq(false)
    end

    it 'ensures password presence' do
      user = User.new(name: 'Name', email: "sample@example.com").save
      expect(user).to eq(false)
    end

    it 'should save successfully' do
      user = User.new(name: 'Name', email: "sample@example.com", password: "12345678").save
      expect(user).to eq(true)
    end
    
  end
end
