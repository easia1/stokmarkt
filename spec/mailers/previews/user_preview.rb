# Preview all emails at http://localhost:3000/rails/mailers/user
class UserPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user/account_created
  def account_created
    @user = User.new(name: 'Mail Test', email: 'Testemail123@testsing.com')
    UserMailer.account_created(@user)
  end

end
