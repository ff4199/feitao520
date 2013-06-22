class Pinglun < ActiveRecord::Base
  attr_accessible :comment, :user,:shuoshuo_id
  belongs_to :shuoshuo
  validates :shuoshuo_id, presence: true
  validates :comment, presence: true, length: { maximum: 140 }
end
