class MemberAccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update]

  def index
    @MemberAccounts = current_user.accounts
  end

  def show
  end

  def new
    @MemberAccounts = Memberaccount.new
  end

  def edit
  end

  def create
    @MemberAccounts = current_user.memberaccounts.new(account_params)
    if @MemberAccounts.save
      redirect_to accounts_path
    else
      render :new
    end
  end

  def udpate
    if @MemberAccounts.update(memberaccount_params)
      redirect_to accounts_path
    else
      render :edit
    end
  end

  def destroy
    @MemberAccounts.destroy
  end

  private 
    def set_account
      #don't just users Account.find(params[:id]) or you would be able to view
      #others accounts
      @MemberAccounts = current_user.memberaccounts.find(params[:id])
    end

    def account_params
      params.require(:account).permit(:name, :balance)
    end
end
