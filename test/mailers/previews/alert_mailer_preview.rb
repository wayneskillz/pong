# Preview all emails at http://localhost:3000/rails/mailers/alert_mailer
class AlertMailerPreview < ActionMailer::Preview

  def up_email
    AlertMailer.with(check: Check.first).up_email
  end

  def down_email
    AlertMailer.with(check: Check.first, reason: "404 - Not Found").down_email
  end

end
