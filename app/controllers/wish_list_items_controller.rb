class WishListItemsController < ApplicationController
  # GET /wish_list_items
  # GET /wish_list_items.json
  def index
    @wish_list_items = WishListItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wish_list_items }
    end
  end

  # GET /wish_list_items/1
  # GET /wish_list_items/1.json
  def show
    @wish_list_item = WishListItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wish_list_item }
    end
  end

  # GET /wish_list_items/new
  # GET /wish_list_items/new.json
  def new
    @wish_list_item = WishListItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wish_list_item }
    end
  end

  # GET /wish_list_items/1/edit
  def edit
    @wish_list_item = WishListItem.find(params[:id])
  end

  # POST /wish_list_items
  # POST /wish_list_items.json
  def create
    @wish_list_item = WishListItem.new(params[:wish_list_item])

    respond_to do |format|
      if @wish_list_item.save
        format.html { redirect_to @wish_list_item, notice: 'Wish list item was successfully created.' }
        format.json { render json: @wish_list_item, status: :created, location: @wish_list_item }
      else
        format.html { render action: "new" }
        format.json { render json: @wish_list_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wish_list_items/1
  # PUT /wish_list_items/1.json
  def update
    @wish_list_item = WishListItem.find(params[:id])

    respond_to do |format|
      if @wish_list_item.update_attributes(params[:wish_list_item])
        format.html { redirect_to @wish_list_item, notice: 'Wish list item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wish_list_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wish_list_items/1
  # DELETE /wish_list_items/1.json
  def destroy
    @wish_list_item = WishListItem.find(params[:id])
    @wish_list_item.destroy

    respond_to do |format|
      format.html { redirect_to wish_list_items_url }
      format.json { head :no_content }
    end
  end
end
