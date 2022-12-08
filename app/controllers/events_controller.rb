class EventsController < ApplicationController
    before_action :set_event, only: %i[show edit update destroy]
    
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

    def edit
    end

    def update
        respond_to do |format|
            if @event.update(event_params)
                format.html {redirect_to event_url(@event), notice: "Event was updated successfully"}
            else
                format.html {render :edit, status: :unprocessable_entity}
            end
        end
    end

    def destroy
        @event.destroy
        respond_to do |format|
            format.html {redirect_to events_url, notice: "Event was successfully destroy"}
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
