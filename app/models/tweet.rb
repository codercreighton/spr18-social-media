class Tweet < ApplicationRecord

	belongs_to :user

	has_many :tweet_tags
	has_many :tags, through: :tweet_tags

	validates :message, presence: true, length: {maximum: 140, too_long: "A tweet is 140 characters.  Maybe you want Facebook?"}


end
