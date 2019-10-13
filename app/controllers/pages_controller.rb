class PagesController < ApplicationController

    def about
        @heading = 'Page about us!'
    end
    def me
        @rooms = Room.all
    end
end
