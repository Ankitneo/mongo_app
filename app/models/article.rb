class Article
  include Mongoid::Document
  include Mongoid::Timestamps
   include Mongoid::Paperclip
  has_mongoid_attached_file :image
  validates :image, :attachment_content_type => { :content_type => ['image/png', 'image/jpg']}
  field :name, type: String
  field :content, type: String
  #  def default_url_by_name
  #   "/assets/avatars/default_#{name}.jpg"
  # end
end