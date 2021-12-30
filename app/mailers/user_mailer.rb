class UserMailer < ApplicationMailer
  #default from: email_address_with_name('notification@example.com', 'Example Company Notifications')
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_created.subject
  #
  def account_created(user)
    @greeting = "Hi"
    @user = user
    # if @user.created_at.hour < 12
    #   @greeting = 'Good morning'
    # elsif @user.created_at.hour > 12 && @user.created_at.hour < 18
    #   @greeting = 'Good afternoon'
    # else
    #   @greeting = 'Good evening'
    # end

    mail(
      #to: email_address_with_name(User.first.email, User.first.name),
      to: @user.email,
      subject: 'Account registration successful'
    )
  end

  def account_admin_created(user)
    @greeting = "Hi"
    @user = user

    mail(
      #to: email_address_with_name(User.first.email, User.first.name),
      to: @user.email,
      subject: 'Your email has been used to register'
    )
  end

  def account_approved(user)
    @user = user

    mail(
      to: @user.email,
      subject: 'Your account has been approved'
    )
  end
end
