class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.reset_password.subject
  #
  def reset_password
    @user = User.find(user_id)

    mail to: @user.email, subject: 'Password Reset Instruction'
  end
end
