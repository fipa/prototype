class FormOfPaymentsController < ApplicationController
  # GET /form_of_payments
  # GET /form_of_payments.json
  def index
    @form_of_payments = FormOfPayment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @form_of_payments }
    end
  end

  # GET /form_of_payments/1
  # GET /form_of_payments/1.json
  def show
    @form_of_payment = FormOfPayment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @form_of_payment }
    end
  end

  # GET /form_of_payments/new
  # GET /form_of_payments/new.json
  def new
    @form_of_payment = FormOfPayment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @form_of_payment }
    end
  end

  # GET /form_of_payments/1/edit
  def edit
    @form_of_payment = FormOfPayment.find(params[:id])
  end

  # POST /form_of_payments
  # POST /form_of_payments.json
  def create
    @form_of_payment = FormOfPayment.new(params[:form_of_payment])

    respond_to do |format|
      if @form_of_payment.save
        format.html { redirect_to @form_of_payment, :notice => 'Form of payment was successfully created.' }
        format.json { render :json => @form_of_payment, :status => :created, :location => @form_of_payment }
      else
        format.html { render :action => "new" }
        format.json { render :json => @form_of_payment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /form_of_payments/1
  # PUT /form_of_payments/1.json
  def update
    @form_of_payment = FormOfPayment.find(params[:id])

    respond_to do |format|
      if @form_of_payment.update_attributes(params[:form_of_payment])
        format.html { redirect_to @form_of_payment, :notice => 'Form of payment was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @form_of_payment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /form_of_payments/1
  # DELETE /form_of_payments/1.json
  def destroy
    @form_of_payment = FormOfPayment.find(params[:id])
    @form_of_payment.destroy

    respond_to do |format|
      format.html { redirect_to form_of_payments_url }
      format.json { head :ok }
    end
  end
end
