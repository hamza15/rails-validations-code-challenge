class DatetimeValidator < ActiveModel::Validator

    def expiration_date_cannot_be_in_the_past
        if expiration_date.present? && expiration_date < Date.today
            errors.add(:expiration_date, "can't be in the past")
        end
    end
    
    # def discount_cannot_be_greater_than_total_value
    #     if discount > total_value
    #         errors.add(:discount, "can't be greater than total value")
    #     end
    # end

end