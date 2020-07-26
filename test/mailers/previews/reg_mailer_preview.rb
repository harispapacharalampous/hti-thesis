# Preview all emails at http://localhost:3000/rails/mailers/reg_mailer
class RegMailerPreview < ActionMailer::Preview

    def sample_mail_preview
        RegMailer.comp_email(User.first)
    end 
    
    def sample_mail_preview2
        RegMailer.comp_email_2(User.first)
    end

    def sample_mail_preview3
        RegMailer.comp_email_3(User.first)
    end

    def sample_mail_preview4
        RegMailer.comp_email_4(User.first)
    end

    def sample_mail_preview5
        RegMailer.comp_email_5(User.first)
    end

    end
