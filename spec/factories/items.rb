FactoryBot.define do
  factory :item do
    color_id        { 2 }

    association :user

  end
end
