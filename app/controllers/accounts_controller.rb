class AccountsController < SecureController
	def index
		@user = User.find(params[:user_id])
		@account = @user.accounts.first
		@tours = @account.tours
	end

	def new
		@acount = Account.new
	end

	def create
		@account = Account.new(permitted_params)
		if @account.save
			redirect_to home_index_path
		else
			render :new
		end
	end

	def update
		if Account.update(permitted_params)
			redirect_to home_index_path
		else
			render :edit
		end
	end

	def destory

	end
end
