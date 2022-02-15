class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact

    mail to: @contact.email, subject: "投稿完了の確認メール"
  end
end
#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
