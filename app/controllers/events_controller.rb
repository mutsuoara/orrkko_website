class EventsController < ApplicationController
before_action :set_event, only: %i[show]
    
    def index
        @events = Event.all
    end

    def show
    end

    def new
        @event = Event.new
    end

    def create
        @event = Event.create(event_params)
        respond_to do |format|
            if @event.save
                format.html {redirect_to event_url(@event), notice: "Event was created successfully"}
            else
                format.html {render :new, status: :unprocessable_entity}
            end
        end
    end

    private

    def set_event
        @event = Event.find(params[:id])
    end

    def event_params
        params.require(:event).permit(:title, :content)
    end
end
