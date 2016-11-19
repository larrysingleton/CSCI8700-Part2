class ReviewController < SecureController
  def view
    @user = current_user;
    @request = Request.find(params[:requestId])
  end

  def submit
    @request = Request.find(params[:review][:requestId])
    @request.destroy
    redirect_to parking_view_path
  end
end