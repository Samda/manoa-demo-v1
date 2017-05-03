class HomeController < SecureController
	def index
		@grids = ToursGrid.new(params[:tours_grid]) do |scope|
			scope.paginate(:page => params[:page], :per_page => 10)
    end
	end
end
