class Product < ApplicationRecord

  def self.latest
    order(:updated_at).last
  end
end
