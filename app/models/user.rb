class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable

  enum role: [ :visitor, :user, :admin ]

  has_many :notes
  has_many :viewers
  has_many :readable, through: :viewers, source: :note
end
