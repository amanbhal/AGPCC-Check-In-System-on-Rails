class Event < ActiveRecord::Base
    def index
        @events = Event.order('id desc').all
    end
end
