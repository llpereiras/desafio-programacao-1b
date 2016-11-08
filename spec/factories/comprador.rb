FactoryGirl.define do
  factory :comprador, class: Comprador do
    sequence(:nome)  { |n| "#{Faker::Lorem.words(3).join(' ')} #{n}" }
  end
end
