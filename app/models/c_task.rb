class CTask < ApplicationRecord
  with_options numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100,
                               message: '0~100の値で入力して下さい' } do
    validates :card_lending
    validates :get_log
    validates :surveillance_monitor
    validates :check_the_log
    validates :job_confirmation
  end

  with_options presence: true do
  validates :c_certification_id
  validates :user_id, uniqueness: true
  end

  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :c_certification
end
