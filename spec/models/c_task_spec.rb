require 'rails_helper'

RSpec.describe CTask, type: :model do
  before do
    @c_task = FactoryBot.build(:c_task)
  end

  describe 'c_task新規登録' do
    context '新規登録できる場合' do
      it 'card_lending、get_log、surveillance_monitor、check_the_log、job_confirmation、c_certification_id、user_idが存在すれば登録できる' do
        expect(@c_task.user).to be_valid
      end
    end

    context '新規登録できない場合' do
      it 'card_lendingが0~100出ないと登録できない' do
        @c_task.card_lending = 101
        @c_task.valid?
        expect(@c_task.errors.full_messages).to include("Card lending 0~100の値で入力して下さい")
      end

      it 'get_logが0~100出ないと登録できない' do
        @c_task.get_log = 200
        @c_task.valid?
        expect(@c_task.errors.full_messages).to include("Get log 0~100の値で入力して下さい")
      end

      it 'surveillance_monitorが0~100出ないと登録できない' do
        @c_task.surveillance_monitor = 300
        @c_task.valid?
        expect(@c_task.errors.full_messages).to include("Surveillance monitor 0~100の値で入力して下さい")
      end
      
      it 'check_the_logが0~100出ないと登録できない' do
        @c_task.check_the_log = 400
        @c_task.valid?
        expect(@c_task.errors.full_messages).to include("Check the log 0~100の値で入力して下さい")
      end

      it 'job_confirmationが0~100出ないと登録できない' do
        @c_task.job_confirmation = 500
        @c_task.valid?
        expect(@c_task.errors.full_messages).to include("Job confirmation 0~100の値で入力して下さい")
      end

      
      it 'c_certification_idが空では登録できない' do
        @c_task.c_certification_id = ''
        @c_task.valid?
        expect(@c_task.errors.full_messages).to include("C certification can't be blank")
      end

      it 'user_idが紐づいていなければ登録できない' do
        @c_task.user_id = nil
        @c_task.valid?
        expect(@c_task.errors.full_messages).to include("User can't be blank")
      end

      it '重複したuserが存在する場合は登録できない' do
        @c_task.user.save
        another_user = FactoryBot.build(:c_task, user_id: @c_task.user_id)
        another_user.valid?
        expect(another_user.errors.full_messages).to include('User has already been taken')
      end

    end
end
end
