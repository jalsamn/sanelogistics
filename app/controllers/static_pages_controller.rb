class StaticPagesController < ApplicationController
  def dashboard
    @customers = Customer.order(:company)
  end

  def help
  end
end
