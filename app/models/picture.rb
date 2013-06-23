class Picture < ActiveRecord::Base
  attr_accessible :introduce, :name, :url
  has_many :attachments, :as => :attachmentable
  default_scope order: 'pictures.created_at DESC'
end
