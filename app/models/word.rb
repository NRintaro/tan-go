class Word < ApplicationRecord
  validates :word, length: { maximum: 50 }, presence: true
  validates :reading, length: { maximum: 100 }
  validates :meaning, length: { maximum: 1000 }, presence: true
  validates :example, length: { maximum: 2000 }
end
