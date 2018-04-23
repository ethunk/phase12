class Car < ApplicationRecord
  belongs_to :manufacturer

  validates :name, presence: true
  validates :manufacturer_id, presence: true
  validates :color, presence: true
  validates :year, numericality: { :greater_than_or_equal_to => 1920 }
  validates :mileage, numericality: { :greater_than_or_equal_to => 0 }

  validate do |car|
    car.errors[:base] << ("Mileage can't be blank") if car.mileage.blank?
  end
end
