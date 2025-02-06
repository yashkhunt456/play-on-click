class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :default_role

  has_one :play_house

  private

  def default_role
    self.add_role(:player) if self.roles.blank?
  end
end
