class RegMailer < ApplicationMailer
    default from: "harry.papacharalampous@gmail.com"

    def reg_email(user)
        @user = user
        mail(to: @user.email, subject: 'Registration Email')
    end

    def comp_email(user)
        @user = user
        mail(to: @user.email, subject: 'GOOD NEWS !')
    end

end
