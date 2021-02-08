class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bansyakus
  has_many :reviews
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :gender
  belongs_to :age
       
  validates :nickname, presence: true
  validates :gender_id, numericality: { other_than: 1 } 
  validates :age_id, numericality: { other_than: 1 } 
end
