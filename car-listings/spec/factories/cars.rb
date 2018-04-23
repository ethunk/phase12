FactoryBot.define do
  factory :car do
    manufacturer_id '1'
    name 'Mustang'
    color 'red'
    year '1999'
    mileage '120000'
    description 'This car is well built and lasts'

    manufacturer
  end
end
