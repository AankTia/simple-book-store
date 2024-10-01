class UserMailer < ApplicationMailer
  default from: email_address_with_name('tia.septianawidi@gmail.com', 'Simple Book Store Notifications')

  def created_book_notification(user_mail, book_title)
    mail(
      to: user_mail,
      subject: "New Book '#{book_title}' Created",
      body: "New Book '#{book_title}' Created",
      content_type: "text/html",     
    )
  end
end
