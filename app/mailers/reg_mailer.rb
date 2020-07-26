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
    
    def comp_email_2(user)
            @user = user
            mail(to: @user.email, subject: 'GOOD NEWS !')
    end
    def comp_email_3(user)
            @user = user
            mail(to: @user.email, subject: 'GREAT NEWS !')
    end
    def comp_email_4(user)
            @user = user
            mail(to: @user.email, subject: 'GOOD NEWS !')
    end 
    def comp_email_5(user)
            @user = user
            mail(to: @user.email, subject: 'GREAT NEWS !')
    end

end
