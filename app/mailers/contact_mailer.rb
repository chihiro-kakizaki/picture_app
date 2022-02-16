class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact

    mail to: @contact.email, subject: "投稿完了の確認メール"
  end
end

