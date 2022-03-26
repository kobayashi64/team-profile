require 'rails_helper'

RSpec.describe User, type: :model do
  
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できる場合' do
      it 'image,name,email、password,password_confirmation、group_id、prefecture_id、birthday、assignment_dateが存在すれば登録できる' do
        expect(@user).to be_valid
      end

      it 'introductionが空でも登録できること' do
        @user.introduction = ''
        expect(@user).to be_valid
      end

      it 'telephone_numberが空でも登録できること' do
        @user.telephone_number = ''
        expect(@user).to be_valid
      end

    end

    context '新規登録できない場合' do
      it 'imageが空では登録できない' do
        @user.image = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Image can't be blank")
      end

      it 'nameが空では登録できない' do
        @user.name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Name can't be blank")
      end

      it 'emailが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end

      it 'prefecture_idが空では登録できない' do
        @user.prefecture_id = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Prefecture can't be blank")
      end
      
      it 'group_idが空では登録できない' do
        @user.group_id = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Group can't be blank")
      end

      it 'birthdayが空では登録できない' do
        @user.birthday = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Birthday can't be blank")
      end

      
      it 'assignment_dateが空では登録できない' do
        @user.assignment_date = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Assignment date can't be blank")
      end

      it 'passwordが空では登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end

      it 'passwordが5文字以下では登録できない' do
        @user.password = 'toro5'
        @user.password_confirmation = 'toro5'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
      end

      it 'passwordとpassword_confirmationが不一致では登録できない' do
        @user.password = 'toro567'
        @user.password_confirmation = 'toro678'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end

      it '重複したemailが存在する場合は登録できない' do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Email has already been taken')
      end

      it 'emailは@を含まないと登録できない' do
        @user.email = 'testmail'
        @user.valid?
        expect(@user.errors.full_messages).to include('Email is invalid')
      end
    end


end
end
