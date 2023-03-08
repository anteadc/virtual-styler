class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  # beautiful landing page, has link to #design page
  def home
  end

  # promts user to choose between custom and preset designs
  def design
  end

  # contains items added by the user
  def basket
    @basket = Cart.create({
      user_id: current_user.id
    })
  end

  def payment

  end

end
