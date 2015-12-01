class CheckinsController < ApplicationController
	def checkin 
		Checkin.new(user: current_user, direction: :in)
		if checkin.save
			head :no_content
		else
			render json: {errors: checkin.errors}, status: :unprocessable_entity
		end
	end

end
