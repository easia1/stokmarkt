require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should include the "email"" attribute' do
    expect(subject.attributes).to include("email") 
  end

  it 'should include the "encrypted_password" attribute' do
    expect(subject.attributes).to include("encrypted_password")
  end

  it 'should include the "reset_password_token" attribute' do
    expect(subject.attributes).to include("reset_password_token")
  end

  it 'should include the "reset_password_sent_at" attribute' do
    expect(subject.attributes).to include("reset_password_sent_at")
  end

  it 'should include the "remember_created_at" attribute' do
    expect(subject.attributes).to include("remember_created_at")
  end
  it 'should include the "name" attribute' do
    expect(subject.attributes).to include("name")
  end

  it 'should include the "status" attribute' do
    expect(subject.attributes).to include("status")
  end

  it 'should include the "balance" attribute' do
    expect(subject.attributes).to include("balance")
  end
end
