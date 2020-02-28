class FormController < ApplicationController
  def index
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      if params[:member][:photo].present?
        render :crop
      else
        redirect_to @member, notice: "Successfully created user."
      end
    else
      render :new
    end
  end

  def member_params
    params.require(:member).permit(:name, :first_last_name, :second_last_name, :employee_code, :photo, :crop_x, :crop_y, :crop_w, :crop_h)
  end
end
