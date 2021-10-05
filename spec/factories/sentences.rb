FactoryBot.define do
  factory :sentence do
    description { "account-#{SecureRandom.hex}" }
  end
end
