FactoryBot.define do
  factory :article do
    user

    title { Faker::Lorem.sentence }
    body { Faker::Lorem.paragraph(50) }
  end
end
