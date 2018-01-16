class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
	has_many :article_tags
	has_many :tags, through: :article_tags
	 validates :title, presence: true,
                    length: { minimum: 5 }
end
