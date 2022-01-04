FactoryBot.define do
    factory(:user) do
      email { "ed@example.com" }
      password { "SecretPassword123" }
			name { "ed pogi" }
			status { "approved" }
    end
  end 