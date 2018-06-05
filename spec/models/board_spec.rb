require 'rails_helper'

RSpec.describe Board, type: :model do 
  describe 'validations' do
    it {should validate_presence_of(:name)}
  end

  describe 'attributes' do
    it 'checks for name and order' do 
      name = 'learn things'
      order = order
      n = Board.create(name: name, order: order)
      expect(n.name).to eq(name)
      expect(n.order).to eq(order)
    end
  end

end




