require 'spec_helper'

RSpec.describe Description, type: :model do
    describe 'validations' do
      it {should validate_presence_of(:title)}
    end

    describe 'attributes' do
      it 'has a title' do 
        title = 'learn things'
        des = Description.create(title.title)
        expect(des.title).to eq(title)
      end
    end
        
      
end

# describe 'attributes' do
#   it 'has a make' do
#     make = 'Toyota'
#     car = Car.create(make: make)
#     expect(car.make).to eq(make)
  
