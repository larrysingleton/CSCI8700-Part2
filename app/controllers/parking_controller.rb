class ParkingController < SecureController
  def view
    @user = current_user;
    @availabilities = @user.availabilities

    @others = Availability.where.not(user_id: @user.id)
  end

  def mark
    @avail = Availability.new
    @avail.user = current_user
    @avail.longitude = params[:parking][:longitude]
    @avail.latitude = params[:parking][:latitude]
    @avail.is_taken = false
    @avail.save
    redirect_to parking_view_path
  end

  def remove
    @avail = Availability.find(params[:parking][:availability_id])
    @avail.destroy
    redirect_to parking_view_path
  end

  def bid
    @request = Request.new
    @request.user = User.find(params[:userId])
    @request.availabilities_id = params[:availabilityId]
    @request.bid = params[:bid]
    @request.save
    redirect_to parking_view_path
  end

  def removeBid
    @request = Request.find(params[:parking][:requestId])
    @request.destroy
    redirect_to parking_view_path
  end

  def accept
    @request = Request.find(params[:parking][:requestId])
    @request.isAccepted = true
    @request.save

    @avail = @request.availability
    @avail.is_taken = true;
    @avail.save

    redirect_to parking_view_path
  end
end