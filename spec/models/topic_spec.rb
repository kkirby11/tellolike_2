require 'rails_helper'

RSpec.describe Topic, type: :model do
    describe 'validations' do
      it {should validate_presence_of(:title)}
    end

    describe 'attributes' do
      it 'has a title and order' do 
        title = 'learn things'
        order = order
        top = Topic.create(title: title, order: order)
        expect(top.title).to eq(title)
        expect(top.order).to eq(order)

      end
    end
end



