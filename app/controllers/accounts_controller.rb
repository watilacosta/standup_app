class AccountsController < ApplicationController
  def new
    redirect_to root_path if current_user.account.present?

    @account = Account.new
  end

  def create
    @account = Account.new(account_params)

    if @account.save
      current_user.update(account: @account)

      redirect_to root_path, notice: "Account created successfully"
    else
      render :new
    end
  end

  private

  def account_params
    params.require(:account).permit(:name, :addr1, :addr2, :city, :state, :zip, :country)
  end
end
