class PlayHouse < ApplicationRecord
  belongs_to :location
  belongs_to :user

  accepts_nested_attributes_for :location

  validates :name, :phone, :description, :timing, presence: true
  validates :phone, numericality: { only_integer: true }, length: { is: 10 }, uniqueness: { message: "this phone number is already exist!"}
end
