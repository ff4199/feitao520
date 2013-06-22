class Picture < ActiveRecord::Base
  attr_accessible :introduce, :name, :url
  has_many :attachments, :as => :attachmentable
end
