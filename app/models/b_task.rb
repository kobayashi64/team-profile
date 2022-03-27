class BTask < ApplicationRecord
  with_options numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100,
                               message: '0~100の値で入力して下さい' } do
    validates :job_start
    validates :sending_media
    validates :status_change
    validates :alarm_support
    validates :failure_contact
  end

  with_options presence: true do
    validates :b_certification_id
    validates :user_id, uniqueness: true
  end

  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :b_certification
end
