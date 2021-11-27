class Task < ApplicationRecord
  validates :content, presence: true
  validates :title, presence: true
  validates :deadline, presence: true
  validates :status, presence: true
  enum status: {
    yet_start:0,start:1,completion:2
  },  _prefix: true
end
