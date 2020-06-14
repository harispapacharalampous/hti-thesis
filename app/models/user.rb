class User < ApplicationRecord
    has_many :posts
    has_many :meetings
    after_create :populate_meetings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    def username
        return self.email.split('@')[0].capitalize
    end

    private

        def populate_meetings
            d = DateTime.now
            #dates =Array.new
            #dates.push(d)
            #dates.push(d + 1.day)
            #dates.push(d + 2.day)
            #dates.push(d + 3.day)
            #dates.push(d + 4.day)

            for b in 0..4 do
                self.meetings.create( name: 'auto ' + b.to_s, activitytype: '420', start_time: (d + b.day ).strftime("%Y-%m-%d %H:%M"), end_time: (d + b.day + 1.hour).strftime("%Y-%m-%d %H:%M"), user_id: self);
            end

        end
end
