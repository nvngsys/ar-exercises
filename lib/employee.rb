class Employee < ActiveRecord::Base
  
    belongs_to :store
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :store, presence: true
    validates :hourly_rate, length: {
        minimum: 40,
        maximum: 200
    }

end
