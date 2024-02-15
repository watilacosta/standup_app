require 'rails_helper'

RSpec.describe Account, type: :model do
  context 'valid factory' do
    it 'has a valid factory' do
      expect(FactoryBot.build(:account)).to be_valid
    end
  end

  context 'validations' do
    it 'will not save without a name' do
      account = FactoryBot.build(:account, name: nil)
      expect(account.save).to be_falsey
    end
  end
end
