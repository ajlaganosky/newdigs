class WishlistsController < ApplicationController
  before_filter :authenticate_user!
    load_and_authorize_resource

#before_filter :get_client
#  def get_client
#  	@client = Client.find(params[:client_id])
#  end
  
  # GET /wishlists
  # GET /wishlists.json
  def index
	@wishlist = Wishlist.all
	@client = Client.all
	#@product = Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wishlists }
    end
  end

  # GET /wishlists/1
  # GET /wishlists/1.json
  def show
  	@wishlist = Wishlist.find(params[:id])
  	@client = @wishlist.client

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wishlist }
    end
  end
  
  def new_with_client
  	@client = Client.find(params[:client_id])
    @wishlist = Wishlist.new
    @wishlist.client_id = @client.id

    @category = Category.where(:wishlist => true)
    @product = Product.where(:category_id => @category.id).order(:category_id)
  end
  
  # GET /wishlists/new
  # GET /wishlists/new.json
  def new
    @wishlist = Wishlist.new
  	@client = Client.find(params[:client_id])
    @wishlist.client_id = @client.id

    @category = Category.where(:wishlist => true)
    @product = Product.where(:category_id => @category.id).order(:category_id)
  end

  # GET /wishlists/1/edit
  def edit
    @wishlist = Wishlist.find(params[:id])
    @client = @wishlist.client

    @category = Category.where(:wishlist => true)
    @product = Product.where(:category_id => @category.id).order(:category_id)
       
  end

  # POST /wishlists
  # POST /wishlists.json
  def create
    @wishlist = Wishlist.new(params[:wishlist])

	if @wishlist.save
  		params[:product_id].each do |product|
  			@wishlist.products << Product.find(product)
        	
    	end
    	redirect_to :action => "show", :id => @wishlist#.client.id
    else
    	render action: "new"
    end
    
  end

  # PUT /wishlists/1
  # PUT /wishlists/1.json
  def update
    @wishlist = Wishlist.find(params[:id])
    @product = Product.all

        if @wishlist.update_attributes(params[:wishlist])
  		params[:product_id].each do |product|
  			if @wishlist.products.where(:id => product).count == 0
  			 @wishlist.products << Product.find(product)
  			end
  		end
		
    	redirect_to :action => "show", :id => @wishlist
   		end

#      if @wishlist.update_attributes(params[:wishlist])
#        format.html { redirect_to Wishlist, notice: 'Pickup list was successfully updated.' }
#        format.json { head :no_content }
#      else
#        format.html { render action: "edit" }
#        format.json { render json: Wishlist.errors, status: :unprocessable_entity }
#      end
#    end
  end

  # DELETE /wishlists/1
  # DELETE /wishlists/1.json
#  def destroy
#    @wishlist = Wishlist.find(params[:id])
#    @wishlist.destroy
#    @product = Product.all
#    @client = Client.all

#    respond_to do |format|
#      format.html { redirect_to wishlists_url }
#      format.json { head :no_content }
#    end
#  end

end
