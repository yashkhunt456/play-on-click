class Location < ApplicationRecord
    has_many :play_houses

    validates :name, :area, :city, :state, :zip, presence: true
    validates :zip, numericality: { only_integer: true }, length: { is: 6 }
end
