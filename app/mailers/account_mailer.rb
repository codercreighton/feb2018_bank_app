class AccountMailer < ApplicationMailer

	def welcome_email(user, account)
    @user = user
    @account = account
    @url  = 'http://localhost:3000/'
    mail(to: @user.email, subject: 'Welcome to Bank and Trust')
  end

  def update_email(user, account, transaction, amount, previous_balance)
  	@user = user
    @account = account
    @url  = 'http://localhost:3000/'
    @transaction = transaction
    @amount = amount
    @previous_balance = previous_balance
    mail(to: @user.email, subject: 'Notice: Account Update!')
  end
  	
	def transfer_funds(user, from_account, to_account, amount, from_prev_balance, to_prev_balance)
		@user = user
    @from_account = from_account
    @to_account = to_account
    @url  = 'http://localhost:3000/'
    @transaction = 'Account to Account Transfer'
    @amount = amount
    @from_prev_balance = from_prev_balance
    @to_prev_balance = to_prev_balance
    mail(to: @user.email, subject: 'Notice: Funds Transfer Completed!')

	end	

end
