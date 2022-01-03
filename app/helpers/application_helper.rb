module ApplicationHelper
    def active_class(path)
        "active" if current_page?(path)
    end

    def user_greeting(user)
        if Time.now.hour >= 7 && Time.now.hour < 12
            "Good Morning, #{user.name}!"
        elsif Time.now.hour >= 12 && Time.now.hour < 18
            "Good Afternoon, #{user.name}!"
        else
            "Good Evening, #{user.name}!"
        end
    end

    def status_mark(user)
        if user.status == "approved"
            "bx-check-circle"
        elsif user.status == "pending"
            "bx-error-circle"
        else
            "bx-minus-circle"
        end
    end
    

end
