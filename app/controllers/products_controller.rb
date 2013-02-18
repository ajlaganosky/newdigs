class ProductsController < ApplicationController
  before_filter :authenticate_user!
    load_and_authorize_resource

  # GET /products
  # GET /products.json
  def index
	@products = Product.where(:inventory => true).find(:all, :order => 'category_id')
    @donors = Donor.all
    @categories = Category.all
    @products2 = Product.where(:inventory => false).find(:all, :order => 'category_id')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])
    @donor = Donor.all
    @event = Event.all
    @category = Category.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @product = Product.new
    @category = Category.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
    @category = Category.all
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(params[:product])
    @category = @product.category
    
    if category.wishlist?
    	@product.status = "0"
    	@product.status_date = Date.now
    	
    	#we are a wish list item... check to see if anybody is looking for us.
    	#maybe we ignore this step here and leave it to daily processing.
    end

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render json: @product, status: :created, location: @product }
      else
        format.html { render action: "new" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = Product.find(params[:id])
    @category = Category.all

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    @category = Category.all

    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end
	def complete
	  Pickup_lists.update_all(["inventory=?", false], :id => params[:product_ids])
	  redirect_to clients_path
	end

end
