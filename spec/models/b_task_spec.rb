require 'rails_helper'

RSpec.describe BTask, type: :model do
  before do
    @b_task = FactoryBot.build(:b_task)
  end

  describe 'b_task新規登録' do
    context '新規登録できる場合' do
      it 'failure_contact,alarm_support,status_change,sending_media,job_start,b_certification_id,user_idが存在すれば登録できる' do
        expect(@b_task.user).to be_valid
      end
    end

    context '新規登録できない場合' do
      it 'failure_contactの値が0~100出ないと登録できない' do
        @b_task.failure_contact = 101
        @b_task.valid?
        expect(@b_task.errors.full_messages).to include("Failure contact 0~100の値で入力して下さい")
      end

      it 'alarm_supportの値が0~100出ないと登録できない' do
        @b_task.alarm_support = 101
        @b_task.valid?
        expect(@b_task.errors.full_messages).to include("Alarm support 0~100の値で入力して下さい")
      end

      it 'status_changeの値が0~100出ないと登録できない' do
        @b_task.status_change = 101
        @b_task.valid?
        expect(@b_task.errors.full_messages).to include("Status change 0~100の値で入力して下さい")
      end

      it 'sending_mediaの値が0~100出ないと登録できない' do
        @b_task.sending_media = 101
        @b_task.valid?
        expect(@b_task.errors.full_messages).to include("Sending media 0~100の値で入力して下さい")
      end

      it 'job_startの値が0~100出ないと登録できない' do
        @b_task.job_start = 101
        @b_task.valid?
        expect(@b_task.errors.full_messages).to include("Job start 0~100の値で入力して下さい")
      end

      
      it 'b_certification_idが空では登録できない' do
        @b_task.b_certification_id = ''
        @b_task.valid?
        expect(@b_task.errors.full_messages).to include("B certification can't be blank")
      end

      it 'user_idが紐づいていなければ登録できない' do
        @b_task.user_id = nil
        @b_task.valid?
        expect(@b_task.errors.full_messages).to include("User can't be blank")
      end

      it '重複したuserが存在する場合は登録できない' do
        @b_task.user.save
        another_user = FactoryBot.build(:b_task, user_id: @b_task.user_id)
        another_user.valid?
        expect(another_user.errors.full_messages).to include('User has already been taken')
      end

    end
end
end
