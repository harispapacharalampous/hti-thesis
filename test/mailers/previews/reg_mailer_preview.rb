# Preview all emails at http://localhost:3000/rails/mailers/reg_mailer
class RegMailerPreview < ActionMailer::Preview

    def sample_mail_preview
        RegMailer.reg_email(User.first)
    end

    end
