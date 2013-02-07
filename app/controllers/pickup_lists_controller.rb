class PickupListsController < ApplicationController
  before_filter :authenticate_user!
    load_and_authorize_resource

#before_filter :get_client
#  def get_client
#  	@client = Client.find(params[:client_id])
#  end
  
  # GET /pickup_lists
  # GET /pickup_lists.json
  def index
	@pickup_list = PickupList.all
	@client = Client.all
	#@product = Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pickup_lists }
    end
  end

  # GET /pickup_lists/1
  # GET /pickup_lists/1.json
  def show
  	@pickup_list = PickupList.find(params[:id])
  	@client = @pickup_list.client

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pickup_list }
    end
  end
  
  def new_with_client
  	@client = Client.find(params[:client_id])
    @pickup_list = PickupList.new
    @pickup_list.client_id = @client.id
    @product = Product.where(:inventory => true).find(:all, :order => 'category_id')
    @category = Category.all    
  end
  
  # GET /pickup_lists/new
  # GET /pickup_lists/new.json
  def new
    @pickup_list = PickupList.new
  	@client = Client.find(params[:client_id])
    @pickup_list.client_id = @client.id
    @product = Product.where(:inventory => true).where(:wishlist => false).find(:all, :order => 'category_id')    
    @category = Category.all    
  end

  # GET /pickup_lists/1/edit
  def edit
    @pickup_list = PickupList.find(params[:id])
    @client = @pickup_list.client
    @product = Product.where(:inventory => true).find(:all, :order => 'category_id')    
    @category = Category.all 
       
  end

  # POST /pickup_lists
  # POST /pickup_lists.json
  def create
    @pickup_list = PickupList.new(params[:pickup_list])

	if @pickup_list.save
  		params[:product_id].each do |product|
  			@pickup_list.products << Product.find(product)
        	
    	end
    	redirect_to :action => "show", :id => @pickup_list.client.id
    else
    	render action: "new"
    end
    
  end

  # PUT /pickup_lists/1
  # PUT /pickup_lists/1.json
  def update
    @pickup_list = PickupList.find(params[:id])
    @product = Product.all

        if @pickup_list.update_attributes(params[:pickup_list])
  		params[:product_id].each do |product|
  			if @pickup_list.products.where(:id => product).count == 0
  			 @pickup_list.products << Product.find(product)
  			end
  		end
		
    	redirect_to :action => "show", :id => @pickup_list
   		end

#      if @pickup_list.update_attributes(params[:pickup_list])
#        format.html { redirect_to PickupList, notice: 'Pickup list was successfully updated.' }
#        format.json { head :no_content }
#      else
#        format.html { render action: "edit" }
#        format.json { render json: PickupList.errors, status: :unprocessable_entity }
#      end
#    end
  end

  # DELETE /pickup_lists/1
  # DELETE /pickup_lists/1.json
#  def destroy
#    @pickup_list = PickupList.find(params[:id])
#    @pickup_list.destroy
#    @product = Product.all
#    @client = Client.all

#    respond_to do |format|
#      format.html { redirect_to pickup_lists_url }
#      format.json { head :no_content }
#    end
#  end

end
