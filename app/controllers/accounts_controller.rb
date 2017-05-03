class AccountsController < SecureController
	def index
		@user = User.find(params[:user_id])
		@account = @user.accounts.first
		@tours = @user.tours
	end
end
