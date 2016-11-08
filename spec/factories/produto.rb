FactoryGirl.define do
  factory :produto, class: Produto do
    sequence(:descricao)  { |n| "#{Faker::Lorem.words(3).join(' ')} #{n}" }
    sequence(:preco)  { |n| Faker::Number.number(2) }
    sequence(:quantidade)  { |n| Faker::Number.decimal(2, 3) }
  end
end
