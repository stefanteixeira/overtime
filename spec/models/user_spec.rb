require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryGirl.create(:user)
  end

  describe 'creation' do
    it 'can be created' do
      expect(@user).to be_valid
    end

    it 'cannot be created without first_name' do
      @user.first_name = nil
      expect(@user).not_to be_valid
    end

    it 'cannot be created without last_name' do
      @user.last_name = nil
      expect(@user).not_to be_valid
    end

    it 'cannot be created without phone' do
      @user.phone = nil
      expect(@user).not_to be_valid
    end

    it 'requires the phone attribute to contain only integers' do
      @user.phone = 'abcdeabcdefgh'
      expect(@user).not_to be_valid
    end

    it 'requires the phone attribute to have only 13 characters' do
      @user.phone = '12345678901234'
      expect(@user).not_to be_valid
    end
  end

  describe 'custom name methods' do
    it 'has a full_name method that combines first and last name' do
      expect(@user.full_name).to eq('SAFADAO, WESLEY')
    end
  end
end
