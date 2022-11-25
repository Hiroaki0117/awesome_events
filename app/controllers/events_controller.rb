class EventsController < ApplicationController
    def new
        @event = current_user.create_events.build
    end

    def create
        @event = current_user.create_events.build(event_params)
        
        if @event.save
            redirect_to @event, notice:"イベントを作成しました"
        end
    end

    private

    def event_params
        params.require(:event).permit(:name, :place, :content, :start_at, :end_at)
    end
end
