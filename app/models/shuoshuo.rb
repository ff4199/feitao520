class Shuoshuo < ActiveRecord::Base
  attr_accessible :content, :pic, :title, :user
  has_many :pingluns ,dependent: :destroy
  default_scope order: 'shuoshuos.created_at DESC'
  validates :content,presence:true
  validates :title,presence:true,length:{maximum:14}
  validates :user,presence:true
end
