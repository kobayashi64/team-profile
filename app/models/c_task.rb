class CTask < ApplicationRecord
  with_options numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100, message: '0~100の値で入力して下さい' } do
    validates :card_lending
    validates :get_log
    validates :surveillance_monitor
    validates :check_the_log
    validates :job_confirmation
  end

  validates :user_id, uniqueness: true

  belongs_to :user
end
