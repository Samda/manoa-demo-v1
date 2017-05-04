class HomeController < SecureController
	def index
		@params = params[:tours_grid]
		if @params
			@days = @params[:by_number_of_day]
			@nights = @params[:by_number_of_day]
			@location = @params[:by_country]
			@hotel = @params[:by_hotel_rate]
		end

		@grids = ToursGrid.new(@params) do |scope|
			scope.paginate(:page => params[:page], :per_page => 10)
    end
	end
end
