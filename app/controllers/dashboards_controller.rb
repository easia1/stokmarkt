class DashboardsController < ApplicationController

    def index
        redirect_to users_path if current_user.admin?
    end

end
