FactoryBot.define do

  factory :product do
    title { :test }
    description { :published }
    image_url { 'https://images7.alphacoders.com/511/thumb-1920-511163.jpg' }
    price { 13 }
  end
end

