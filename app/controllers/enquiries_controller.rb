class EnquiriesController < ApplicationController

    def new
      @page = Page.find_by(machine_name: 'contact_us')
      @enquiry = Enquiry.new
    end

    def create
      @enquiry = Enquiry.new(enquiry_params)

      if recaptcha && @enquiry.save
        EnquiriesMailer.enquiry(@enquiry).deliver_now
        redirect_to contact_us_thanks_path
      else
        @page = Page.find_by(machine_name: 'contact_us')
        render :new
      end
    end

    def thanks
      @page = Page.find_by(machine_name: 'contact_us')
    end

    def recaptcha
      verify_recaptcha(model: @enquiry)
    end

    private

    # Only allow a trusted parameter "white list" through.
    def enquiry_params
      params.require(:enquiry).permit(:name, :email, :message)
    end
end
