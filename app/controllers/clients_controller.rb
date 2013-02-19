class ClientsController < ApplicationController
    before_filter :authenticate_user!    
    load_and_authorize_resource
    
		
  # GET /clients
  # GET /clients.json
  def index
  if params[:search]
    @clients = Client.search(params[:search]).page(params[:page]).order(:lastname)
  else
  	@clients = Client.page(params[:page]).order(:lastname)
  end
    @users = User.all
#    @pickup_lists = Pickup_list.all


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clients }
    end
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
    @client = Client.find(params[:id])
    @user = User.all
    @pickuplist = PickupList.where("client_id = ?", @client)
    @wishlist = Wishlist.where("client_id = ?", @client)
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @client }
    end
  end

  # GET /clients/new
  # GET /clients/new.json
  def new
    @client = Client.new
    @user = User.all
 #   @pickup_list = Pickup_list.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @client }
    end
  end

  # GET /clients/1/edit
  def edit
    @client = Client.find(params[:id])
    @user = User.all
 #   @pickup_list = Pickup_list.all
  end

  # POST /clients
  # POST /clients.json
  def create
    @client = Client.new(params[:client])
    @user = User.all
 #   @pickup_list = Pickup_list.all

    respond_to do |format|
      if @client.save
        format.html { redirect_to @client, notice: 'Client was successfully created.' }
        format.json { render json: @client, status: :created, location: @client }
      else
        format.html { render action: "new" }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clients/1
  # PUT /clients/1.json
  def update
    @client = Client.find(params[:id])
    @user = User.all
 #   @pickup_list = Pickup_list.all

    respond_to do |format|
      if @client.update_attributes(params[:client])
        format.html { redirect_to @client, notice: 'Client was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @client = Client.find(params[:id])
    @client.destroy
 #   @pickup_list = Pickup_list.all

    respond_to do |format|
      format.html { redirect_to clients_url }
      format.json { head :no_content }
    end
  end
  
  def pickup_lists
  	@client = Client.find(params[:id])
  	@pickup_lists = @client.pickup_lists
  end
  
end
