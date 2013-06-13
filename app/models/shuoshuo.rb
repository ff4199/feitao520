class Shuoshuo < ActiveRecord::Base
  attr_accessible :content, :pic, :title, :user
  default_scope order: 'shuoshuos.created_at DESC'
end
