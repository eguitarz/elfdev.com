class InquiriesController < ApplicationController
	def new
		@inquiry = Inquiry.new
	end

	def create
		@inquiry = Inquiry.new inquiry_params
		purpose = ''
		if params[:purpose]
			params[:purpose].each{|k, v|
				purpose += "#{k} "
			}
		end
		@inquiry.purpose = purpose
		@inquiry.budget = params[:budget].to_s
		if @inquiry.save
			flash[:notice] = 'Thank you, we will contact you in 24 hours.'
			redirect_to :root
		else
			flash[:alert] = @inquiry.errors.full_messages
			render :new
		end
	end

	private
	def inquiry_params
		params.require(:inquiry).permit(:name, :description, :email, :phone)
	end
end
