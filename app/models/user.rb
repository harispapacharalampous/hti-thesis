class User < ApplicationRecord
    has_many :posts
    has_many :meetings
    has_many :coffees
    has_many :waters
    #callback cue
    after_create :populate_meetings

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    def reg_email
       RegMailer.reg_email(self).deliver_now
    end


    def after_database_authentication
        if self.condition ==1
            if self.posts.count>=2
                RegMailer.comp_email(self).deliver_now
            end
        end
    end

    def username
        return self.email.split('@')[0].capitalize
    end

    private
        #callback cue'd function after creating a new profile
        def populate_meetings
            self.meetings.destroy_all;
            d = DateTime.now;
            walk=[];
            commute=[];
            walk = [ d,(d+1.day),(d+2.day),(d+3.day),(d+4.day),(d+7.day),(d+8.day),(d+9.day),(d+10.day),(d+11.day),(d+14.day)];
            commute = [ d,(d+2.day),(d+4.day),(d+6.day),(d+8.day),(d+10.day),(d+12.day),(d+14.day)];
            activity = [ d,(d+2.day),(d+4.day),(d+6.day),(d+8.day),(d+10.day),(d+12.day),(d+14.day)];

            if self.condition == 0
                for item in walk do
                    self.meetings.create( name: " 20' Walk", activitytype: '1', start_time: item.strftime("%Y-%m-%d %H:%M"), end_time: (item + 1.hour).strftime("%Y-%m-%d %H:%M"), user_id: self);
                end
                for item in commute do
                    self.meetings.create( name: ' Commute ', activitytype: '2', start_time: item.strftime("%Y-%m-%d %H:%M"), end_time: (item + 1.hour).strftime("%Y-%m-%d %H:%M"), user_id: self);
                end
            elsif self.condition==1
                for item in activity do
                    self.meetings.create( name: " 15' Activity",activitytype: '0', start_time: item.strftime("%Y-%m-%d %H:%M"), end_time: (item + 1.hour).strftime("%Y-%m-%d %H:%M"), user_id: self);
                end
            end


        end

end
