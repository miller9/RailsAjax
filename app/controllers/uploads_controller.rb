class UploadsController < ApplicationController
  def new
  end

  def create
  	@upload = Uploads.create(upload_params)
  	if @upload.save
  		render json: {message:"success", fileId: @upload.id}, :status => 200
  	else
  		render json: {message: @upload.errors.full_messages.join(',')}, :status => 400
  	end
  end

  private
  def upload_params
  	params.require(:upload).permit(:image)
  end

end
