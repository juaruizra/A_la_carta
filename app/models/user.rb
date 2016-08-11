class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :sales
  validates :name, length: { minimum: 2 }, presence: true, uniqueness: true, format: { with: /\A[a-zA-Z0-9]+\Z/, message: "solo se admiten numeros y letras"  },format: { without: /\s/ , message: "Ingrese UserName sin espacios"  }
  #  validates :games_played, numericality: { only_integer: true },, presence: true
end
