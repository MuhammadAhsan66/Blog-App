class PostMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.post_created.subject
  #
  def post_created
    @greeting = "Hi My name is Ahsan.\n I am testing Action Mailer"

    mail(to: 'muhammad.ahsan@devsinc.com', subject: 'Testing')
  end
end
