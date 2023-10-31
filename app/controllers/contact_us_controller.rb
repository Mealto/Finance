class ContactUsController < ApplicationController
  def new
  end

  def create
    contact = Contact.new(contact_params)
    if contact.save
      flash.now[:success] = 'Successfully checked in'
      redirect_to contact_us_new_path
    else
      flash.now[:errors] = 'cannot submit your form please try again'
    end
  end

  private

  def contact_params
    params.permit(:name, :email, :phone_number, :remark, :business_type)
  end

end
