class MembersController < ApplicationController
  def new
    @member = Member.new
  end

  def create
    @member = Member.new(params[:member])
    if @member.save
      flash[:notice] = "Registeration Successful."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end

  def edit
    @member = current_member
  end

  def update
    @member = current_member
    if @member.update_attributes(params[:member])
      flash[:notice] = "Successfully updated profile."
      redirect_to root_url
    else
      render :action => 'edit'
    end
  end
end
