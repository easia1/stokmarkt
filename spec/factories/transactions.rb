FactoryBot.define do
  factory :transaction do
    ticker { "MyString" }
    name { "MyString" }
    price { "9.99" }
    quantity { 1 }
    user_id { nil }
  end
end
