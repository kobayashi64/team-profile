class ATask < ApplicationRecord
  with_options numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100,
                               message: '0~100の値で入力して下さい' } do
    validates :operation_handover_material
    validates :incident_handover_material
    validates :failure_flow
  end

  with_options presence: true do
    validates :a_certification_id
    validates :user_id, uniqueness: true
  end

  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :a_certification
end
