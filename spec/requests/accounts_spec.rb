require 'rails_helper'

RSpec.describe 'Accounts', type: :request do
  login_user

  describe 'GET #new' do
    it 'returns http success' do
      get new_account_path
      expect(response).to have_http_status(:success)
    end

    it 'renders the new template' do
      get new_account_path
      expect(response).to render_template(:new)
    end
  end

  describe 'POST #create' do
    it 'creates a new accounts' do
      expect {
        post accounts_path, params: { account: FactoryBot.attributes_for(:account) }
      }.to change(Account, :count).by(1)

      expect(response).to redirect_to(root_path)
    end

    it 'does not create a new accounts with invalid data' do
      expect {
        post accounts_path, params: { account: FactoryBot.attributes_for(:account, name: nil) }
      }.to_not change(Account, :count)

      expect(response).to render_template(:new)
    end
  end
end