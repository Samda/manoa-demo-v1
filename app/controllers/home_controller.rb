class HomeController < SecureController
	def index
		@tours =[]
		@location = params[:location]
		@days = params[:days]
		@nights = params[:nights]
		# budget = params[:budgets]

		if @location && @days && @nights
			@tours = Tour.where(location: @location, number_of_days: @days, number_of_night: @nights)
		end
	end
end
