class GiftCategoriesController < ApplicationController
  # GET /gift_categories
  # GET /gift_categories.json
  def index
    @gift_categories = GiftCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @gift_categories }
    end
  end

  # GET /gift_categories/1
  # GET /gift_categories/1.json
  def show
    @gift_category = GiftCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @gift_category }
    end
  end

  # GET /gift_categories/new
  # GET /gift_categories/new.json
  def new
    @gift_category = GiftCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @gift_category }
    end
  end

  # GET /gift_categories/1/edit
  def edit
    @gift_category = GiftCategory.find(params[:id])
  end

  # POST /gift_categories
  # POST /gift_categories.json
  def create
    @gift_category = GiftCategory.new(params[:gift_category])

    respond_to do |format|
      if @gift_category.save
        format.html { redirect_to @gift_category, :notice => 'Gift category was successfully created.' }
        format.json { render :json => @gift_category, :status => :created, :location => @gift_category }
      else
        format.html { render :action => "new" }
        format.json { render :json => @gift_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gift_categories/1
  # PUT /gift_categories/1.json
  def update
    @gift_category = GiftCategory.find(params[:id])

    respond_to do |format|
      if @gift_category.update_attributes(params[:gift_category])
        format.html { redirect_to @gift_category, :notice => 'Gift category was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @gift_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gift_categories/1
  # DELETE /gift_categories/1.json
  def destroy
    @gift_category = GiftCategory.find(params[:id])
    @gift_category.destroy

    respond_to do |format|
      format.html { redirect_to gift_categories_url }
      format.json { head :ok }
    end
  end
end
