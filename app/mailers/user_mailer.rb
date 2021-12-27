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

    mail(
      #to: email_address_with_name(User.first.email, User.first.name),
      to: @user.email,
      subject: 'Account registration successful'
    )
  end
end
