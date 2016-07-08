class ChargesController < ApplicationController
  def new
    @plan = params[:plan]
    if @plan == "Annual"
      @amount = 845 * 12
    elsif @plan == "Bi-Annual"
      @amount = 895 * 6
    else
      @amount = 995
    end
  end

  # need if/else for logic for not creating multiple customers
  # probably include a redirect if certain conditions are met

  def create
    @plan = params[:plan]
    token = params[:stripeToken]
    email = params[:stripeEmail]

    #create customer independent of charge
    customer = Stripe::Customer.create(
      :email => email,
      :source => token,
      :plan => @plan
    )

    if @plan == "Annual"
      time_lapse = 1.year
      amount = 10140
    elsif @plan == "Bi-Annual"
      time_lapse = 6.months
      amount = 5370
    else
      time_lapse = 1.month
      amount = 995
    end
      
    charge = Charge.create(
      user_id: current_user.id,
      plan: @plan,
      expiration: (DateTime.now + time_lapse).to_date,
      status: "Active",
      stripe_customer_id: customer.id,
      amount: amount
    )

    if charge.save
      redirect_to billing_profiles_path
    end

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path

  end

  def edit
    if current_user.charges.present?
      stripe_customer_id = current_user.charges.last.stripe_customer_id
      customer = Stripe::Customer.retrieve(stripe_customer_id)
    else
      customer = Stripe::Customer.create(
        :email => email,
        :source => token,
        :plan => @plan 
      )
    end

  end
  
  private

  def charge_params
    params.require(:charge).permit(:user_id, :plan, :expiration, :status, :stripe_customer_id, :amount)
  end
end
