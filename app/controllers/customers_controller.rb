class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @orderd_customers = Customer.all.order(:firstname)
  end

  def missing_email
    @missing_email_customers = Customer.where(email: "")
  end
end
