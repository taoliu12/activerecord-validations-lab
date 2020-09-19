class ClickbaitValidator < ActiveModel::Validator

    # If the title does not contain "Won't Believe", "Secret", "Top [number]", or "Guess", the validator should add a validation.

    def validate(record)
        non_clickbait_titles = ["Won't Believe", "Secret", "Top[number]", "Guess"]

        if record.title && non_clickbait_titles.none? {|e| record.title.include?(e)}
        # if record.title && non_clickbait_titles.detect {|e| record.title.include?(e)}.nil?        
            record.errors[:title] << "Must contain clickbait"           
        end
      end
end 