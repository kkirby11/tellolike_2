class MemberAccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update]

  def index
    @MemberAccounts = current_user.accounts
  end

  def show
  end

  def new
    @MemberAccounts = current_user.member_accouts.new
  end

  def edit
  end

  def create
    @memberaccounts = current_user.memberaccounts.new(memberaccount_params)
    if @memberaccounts.save
      flash[:successful] = 'Account Created'
      redirect_to @memberaccount_path
    else
      flash[:effor] = "Error: #{@memberaccount.errors.full_messages.join("\n")}"
      render :new
    end
  end

  def udpate
    if @MemberAccounts.update(memberaccount_params)
      redirect_to @memberaccount, notice 'Account was successfuly updated'
    else
      render :edit
    end
  end

  def destroy
    @MemberAccounts.destroy
    redirect_to member_accouts_url
  end

  private 
    def set_memberaccount
      #don't just users Account.find(params[:id]) or you would be able to view
      #others accounts
      @MemberAccount = current_user.memberaccounts.find(params[:id])
    end

    def account_params
      params.require(:memberaccount).permit(:name, :balance)
    end
end
