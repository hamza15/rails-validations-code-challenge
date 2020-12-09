class Rental < ApplicationRecord
    validates :customer_name, presence: true
    validates :boat_name, presence: true
    validates :date, presence: true
    validates :time, presence: true

    # include ActiveModel::Validations
    # validates_with DatetimeValidator

    validate :date_cannot_be_in_the_past
   
    def date_cannot_be_in_the_past
      if date < Date.today
        errors.add(:date, "can't be in the past")
      end
    end

end
