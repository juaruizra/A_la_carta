class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :sales

  # attr_accessible :sale

   validates :name, length: { minimum: 2 }, presence: true, uniqueness: true
  #  validates :games_played, numericality: { only_integer: true },, presence: true
end
