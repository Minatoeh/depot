FactoryBot.define do

  factory :product do
    title { :test }
    description { :published }
    image_url { 'https://s1.1zoom.me/big0/540/422617-Kycb.jpg' }
    price { 13 }
  end
end

