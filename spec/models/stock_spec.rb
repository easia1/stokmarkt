require 'rails_helper'

RSpec.describe Stock, type: :model do
  it 'should include the "ticker" attribute' do
    expect(subject.attributes).to include("ticker") 
  end

  it 'should include the "name" attribute' do
    expect(subject.attributes).to include("name")
  end

  it 'should include the "last_price" attribute' do
    expect(subject.attributes).to include("last_price")
  end

  it 'should include the "quantity" attribute' do
    expect(subject.attributes).to include("quantity")
  end

  it 'should include the "user_id" attribute' do
    expect(subject.attributes).to include("user_id")
  end
end
