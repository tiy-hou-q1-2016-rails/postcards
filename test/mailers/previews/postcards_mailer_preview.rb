# Preview all emails at http://localhost:3000/rails/mailers/postcards_mailer
class PostcardsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/postcards_mailer/new_card
  def new_card
    PostcardsMailer.new_card(Postcard.last)
  end

end
