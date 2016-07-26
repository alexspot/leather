class Product < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true

  has_many :pictures, dependent: :destroy
  has_many :order_items

  accepts_nested_attributes_for :pictures, allow_destroy: true

  default_scope { where(active: true) }

  # rails_admin do
  #   configure :title do
  #     label 'some custom label for title field'
  #   end
  # end
end
