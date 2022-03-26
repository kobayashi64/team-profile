require 'rails_helper'

RSpec.describe ATask, type: :model do
  before do
    @a_task = FactoryBot.build(:a_task)
  end

  describe 'a_task新規登録' do
    context '新規登録できる場合' do
      it 'failure_flow,incident_handover_material,operation_handover_material,a_certification_id,user_idが存在すれば登録できる' do
        expect(@a_task.user).to be_valid
      end
    end

    context '新規登録できない場合' do
      it 'failure_flowの値が0~100出ないと登録できない' do
        @a_task.failure_flow = 101
        @a_task.valid?
        expect(@a_task.errors.full_messages).to include("Failure flow 0~100の値で入力して下さい")
      end

        it 'incident_handover_materialの値が0~100出ないと登録できない' do
          @a_task.incident_handover_material= 101
          @a_task.valid?
          expect(@a_task.errors.full_messages).to include("Incident handover material 0~100の値で入力して下さい")
        end

          it 'operation_handover_materialの値が0~100出ないと登録できない' do
            @a_task.operation_handover_material = 101
            @a_task.valid?
            expect(@a_task.errors.full_messages).to include("Operation handover material 0~100の値で入力して下さい")
          end

      
      it 'a_certification_idが空では登録できない' do
        @a_task.a_certification_id = ''
        @a_task.valid?
        expect(@a_task.errors.full_messages).to include("A certification can't be blank")
      end

      it 'user_idが紐づいていなければ登録できない' do
        @a_task.user_id = nil
        @a_task.valid?
        expect(@a_task.errors.full_messages).to include("User can't be blank")
      end

      it '重複したuserが存在する場合は登録できない' do
        @a_task.user.save
        another_user = FactoryBot.build(:a_task, user_id: @a_task.user_id)
        another_user.valid?
        expect(another_user.errors.full_messages).to include('User has already been taken')
      end

    end
end
end
