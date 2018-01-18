class ArticleTag < ApplicationRecord
	belongs_to :tag
	belongs_to :article
	validates_uniqueness_of :tag_id, :scope => :article_id
end
