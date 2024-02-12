require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is a valid factory' do
    expect(FactoryBot.build(:user)).to be_valid
  end
end
