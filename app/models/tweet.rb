class Tweet < ApplicationRecord

	belongs_to :user

	validates :message, presence: true, length: {maximum: 140, too_long: "A tweet is 140 characters.  Maybe you want Facebook?"}
end
