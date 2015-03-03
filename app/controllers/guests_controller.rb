class GuestsController < ApplicationController

  def create
    @guest = Guest.create guest_params

    if @guest.errors.none?
      redirect_to root_path, flash: { success: 'RSVP submitted. See you soon!' }
    else
      flash[:error] = @guest.errors.full_messages.join(', ')
      redirect_to root_path, flash: { error: 'Form can’t be blank.' }
    end
  end

  def edit
  end

  def index
    @guests = Guest.order(:full_name).all
    @guest = Guest.new
  end

  def new
    @guest = Guest.new
  end

  def update
    if @guest.update_attributes guest_params
      redirect_to guests_path(@guest), flash: { success: "#{@guest.first_name} was successfully updated."}
    else
      flash[:error] = @guest.errors.full_messages.join(', ')
      render :edit
    end
  end

  private

  def guest_params
    params.require(:guest).permit(
      :attending,
      :email,
      :full_name,
      :song
    )
  end

end
