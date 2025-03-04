class AuthorPostsSerializer < ActiveModel::AuthorPostsSerializer
    attributes :title, :short_content

    belongs_to :author
    has_many :tags
  
    def short_content
      self.object.content[0..39] + "..."
    end
end