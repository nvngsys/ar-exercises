class Store < ActiveRecord::Base

    has_many :employees
    validates :name, length: {minimum: 3}
    validates :annual_revenue, length: {minimum: 0}, numericality: { only_integer: true }

    before_destroy :disallow_if_employees

    private
    def disallow_if_employees
        puts "call disalllow_if_employees"
        if self.employees.count > 0 
            puts "self.employees > 0"
          self.errors.add(:base, "cannot be deleted because it has students")
          puts "pre false"
          throw :abort
          #return false  I found the abort worked and false did not
        end
        puts "pre true"
        true
      end

end
