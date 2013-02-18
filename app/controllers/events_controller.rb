class EventsController < ApplicationController
    before_filter :authenticate_user!
  load_and_authorize_resource
  def index
  	@events = Event.all
    @events_by_date = @events.group_by(&:published_on)
    @expiration_date = @events.group_by(&:expiration_date)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today

  end
	# show show show show show show show show show show show show show show show
  def show
    @event = Event.find(params[:id])
    @product = Product.all
  end

	# new new new new new new new new new new new new new new new new new new new
  def new
    @event = Event.new
  end

	# create create create create create create create create create create create create
def create
	@event = Event.new params[:event]

    if @event.save
      redirect_to @event, notice: "Created Event."
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event])
      redirect_to @event, notice: "Updated Event."
    else
      render :edit
    end
  end
  
  def new_with_client
  	@client = Client.find(params[:client_id])
    @event = Event.new
    @event.client_id = @client.id
  end
  
  def filter
	if params[:filter].present?
		@events = Event.where(:filter => params[:filter])
	else
    	@events = Event.all
    end
    @events_by_date = @events.group_by(&:published_on)
    @expiration_date = @events.group_by(&:expiration_date)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today

  end
  
  def day
    @dates = Date.parse(params[:date])
    @date = Date.parse(params[:date]).strftime("%m%d%Y")
    @datedb = @dates.strftime("%Y-%m-%d")
  	@events = Event.where(:expiration_date => @datedb)
  end
  
end