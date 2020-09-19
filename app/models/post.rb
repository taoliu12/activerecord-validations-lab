class Post < ActiveRecord::Base
    include ActiveModel::Validations
    validates_with ClickbaitValidator, on: :create

    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: %w(Fiction Non-Fiction), message: "%{value} is not a valid category"}
end
