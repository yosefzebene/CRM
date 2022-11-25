class Customer < ApplicationRecord
    has_one_attached :picture do |attachable|
        attachable.variant :profile, resize_to_limit: [100, 100]
    end

    validates :firstname, :lastname, presence: true, length: { maximum: 100 }
    validates :notes, length: { maximum: 2000 }

end
