class Store < ActiveRecord::Base

    has_many :employees
    validates :name, length: {minimum: 3}
    validates :annual_revenue, length: {minimum: 0}, numericality: { only_integer: true }
end
