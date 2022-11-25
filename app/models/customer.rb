class Customer < ApplicationRecord

    validates :firstname, :lastname, presence: true, length: { maximum: 100 }
    validates :notes, length: { maximum: 2000 }

end
