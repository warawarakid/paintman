class Item < ApplicationRecord

  belongs_to :user
  has_one :history

  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to_active_hash :color

  validates :color_id, presence: true, numericality: { other_than: 1, message: "can't be blank" }
  end

end
