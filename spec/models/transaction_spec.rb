require 'rails_helper'

RSpec.describe Transaction, type: :model do
  it 'should include the "ticker" attribute' do
    expect(subject.attributes).to include("ticker") 
  end

  it 'should include the "name" attribute' do
    expect(subject.attributes).to include("name")
  end

  it 'should include the "price" attribute' do
    expect(subject.attributes).to include("price")
  end

  it 'should include the "transaction_type" attribute' do
    expect(subject.attributes).to include("transaction_type")
  end

  it 'should include the "user_id" attribute' do
    expect(subject.attributes).to include("user_id")
  end
end
