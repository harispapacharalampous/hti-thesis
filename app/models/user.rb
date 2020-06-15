class User < ApplicationRecord
    has_many :posts
    has_many :meetings
    #callback cue
    after_create :populate_meetings
    #callback cue

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    def username
        return self.email.split('@')[0].capitalize
    end

    #callback function after login
    def after_database_authentication
      #custom code here
    end

    private
        #callback cue'd function after creating a new profile
        def populate_meetings
            d = DateTime.now
            #generate 5 events of  1h duration in 5 consecutive days type 1 (run)
            for b in 0..4 do
                self.meetings.create( name: 'run ' + b.to_s, activitytype: '1', start_time: (d + b.day ).strftime("%Y-%m-%d %H:%M"), end_time: (d + b.day + 1.hour).strftime("%Y-%m-%d %H:%M"), user_id: self);
            end
            #generate 5 events of  1h duration in 5 consecutive days type 2 (commute)
            for c in 0..4 do
                self.meetings.create( name: 'commute ' + c.to_s, activitytype: '2', start_time: (d + c.day + 2.hour ).strftime("%Y-%m-%d %H:%M"), end_time: (d + c.day + 3.hour).strftime("%Y-%m-%d %H:%M"), user_id: self);
            end

        end
end
