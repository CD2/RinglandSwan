class Admin::EventsController < AdminController

  def index
    @events = Page.all
  end

  def new
    @event = Page.new
  end

  def edit
  end

  def create
    @event = Page.new(event_params)

    if @event.save
      redirect_to @event
    else
      render :new
    end
  end

  def update
    if @event.update(event_params)
      redirect_to @event
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to admin_events_url
  end

  private

    def event_params
      params.requre(:event).permit(:name, :banner, :body)
    end
  

end
