require 'sidekiq'

class BookEmailNotificationJob
  include Sidekiq::Worker

  def perform(email, book_id)
    if email.present? && book_id.present?
      book_title = Book.find(book_id)&.title
      UserMailer.created_book_notification(email, book_title)
    else
      # todo: puts log info
    end
  end
end