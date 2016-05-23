class Admin::EnquiriesController < AdminController

  def index
    @enquiries = Enquiry.all
  end

  def show
    @enquiry = Enquiry.find(params[:id])
  end

  def destroy
    @enquiry = Enquiry.find(params[:id])
    @enquiry.destroy
    redirect_to admin_enquiries_url
  end

end
