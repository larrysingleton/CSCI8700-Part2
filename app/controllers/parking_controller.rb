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
end
