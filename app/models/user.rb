class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :image
  has_one :a_task
  has_one :b_task
  has_one :c_task

  with_options presence: true do
    validates :name
    validates :image
    validates :birthday
    validates :assignment_date
    validates :group_id
    validates :prefecture_id
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :group
end
