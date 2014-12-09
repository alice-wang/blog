class Article < ActiveRecord::Base
  validates :title, presence: true,
                    length: { minimum: 1 }
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :url => "/assets/articles/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/articles/:id/:style/:basename.:extension"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

end
