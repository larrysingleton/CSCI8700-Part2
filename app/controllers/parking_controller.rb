class ParkingController < SecureController
  def view

  end

  def mark
    long = params[:longitude]
    lat = params[:latitude]
    avail = Availability.new()
    avail.user = current_user
    avail.longitude = long
    avail.latitude = lat
    avail.is_taken = false
    avail.save()
  end
end
