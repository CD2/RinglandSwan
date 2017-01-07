class EnquiriesController < ApplicationController

    def new
      @page = Page.find_by(machine_name: 'contact_us')
      @enquiry = Enquiry.new
    end

    def create
      @enquiry = Enquiry.new(enquiry_params)
      EnquiriesMailer.enquiry(@enquiry).deliver_now
      if @enquiry.save
        redirect_to contact_us_thanks_path
      else
        render :new
      end
    end

    def thanks
      @page = Page.find_by(machine_name: 'contact_us')
    end

    private

    # Only allow a trusted parameter "white list" through.
    def enquiry_params
      params.require(:enquiry).permit(:name, :email, :message)
    end
end
