FactoryGirl.define do
  factory :fornecedor, class: Fornecedor do
    sequence(:nome)  { |n| "#{Faker::Lorem.words(3).join(' ')} #{n}" }
  end
end
