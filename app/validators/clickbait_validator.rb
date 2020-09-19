class ClickbaitValidator < ActiveModel::Validator

    # If the title does not contain "Won't Believe", "Secret", "Top [number]", or "Guess", the validator should add a validation.
    def validate(record)
        non_clickbait = ["Won't Believe", "Secret", "Top[number]", "Guess"]

        if record.title && !non_clickbait.detect {|e| record.title.include?(e)}
            record.errors[:title] << "Must contain clickbait"           
        end
      end

end 