class PurchasesController < ApplicationController
  # GET /purchases
  # GET /purchases.json
  def index
    @purchases = Purchase.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @purchases }
    end
  end

  # GET /purchases/1
  # GET /purchases/1.json
  def show
    @purchase = Purchase.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @purchase }
    end
  end

  # GET /purchases/new
  # GET /purchases/new.json
  def new
    @purchase = Purchase.new
    @purchase.offer_id = params[:offer_id]
    #TODO la cantidad se debe sacar de params
    @purchase.quantity = 1
    @redcompra = FormOfPayment.find(1)
    @t_credito = FormOfPayment.find(2)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @purchase }
    end
  end

  # GET /purchases/1/edit
  def edit
    @purchase = Purchase.find(params[:id])
  end

  # POST /purchases
  # POST /purchases.json
  def create
    @purchase = Purchase.new(params[:purchase])
    @purchase.status = Purchase.new_status
    @purchase.user = current_user

    respond_to do |format|
      if @purchase.save
        format.html { redirect_to @purchase, :notice => 'Tu compra ha sido realizada exitosamente' }
        format.json { render :json => @purchase, :status => :created, :location => @purchase }
      else
        format.html { render :action => "new" }
        format.json { render :json => @purchase.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /purchases/1
  # PUT /purchases/1.json
  def update
    @purchase = Purchase.find(params[:id])

    respond_to do |format|
      if @purchase.update_attributes(params[:purchase])
        format.html { redirect_to @purchase, :notice => 'Purchase was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @purchase.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /purchases/1
  # DELETE /purchases/1.json
  def destroy
    @purchase = Purchase.find(params[:id])
    @purchase.destroy

    respond_to do |format|
      format.html { redirect_to purchases_url }
      format.json { head :ok }
    end
  end
end
