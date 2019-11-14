class Person < ApplicationRecord

    validates :name, presence: true
    valides :house_id, presence: true
end