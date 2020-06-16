class Water < ApplicationRecord
    belongs_to :user
    #time zones
    config.time_zone = 'Amsterdam'
end
