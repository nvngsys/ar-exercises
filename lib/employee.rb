class Employee < ActiveRecord::Base
  
    belongs_to :store
    validates :first_name, presence: true
    validates :last_name, presence: true
    #validates_inclusion_of :hourly_rate, in: => 40...200
    validates :hourly_rate, numericality: { only_integer: true, greater_than: 40, less_than: 200 }

    #before_create was\ my preferred way to do this until before_save
    # <> before_create :create_random_password
    
    #compass has us change to after_create - this will work but only if you add .save to your
    #  employees.create in ex_files 6 and 8.  What that is doing is forcing a save again with
    #the new self.password value being inserted after the row is in the table - An update to existing data
    # <> after_create :create_random_password
    
    # before save allow us to drop the .save from the create - so I like it
    # you will see in files 6 and 8 that some dont have .save. Works either way.
    before_save :create_random_password

    private
    def create_random_password
        puts "Call to create_random_password"
        self.password = (0...8).map { (65 + rand(26)).chr }.join
    end
end
