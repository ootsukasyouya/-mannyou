class Task < ApplicationRecord
  validates :content, presence: true
  validates :title, presence: true
  validates :deadline, presence: true
  validates :status, presence: true
  enum status: {
    yet_start:0,start:1,completion:2
  },  _prefix: true
  scope :search_title, -> (keyword){where("title like?", "%#{keyword}%")}
  # def self.search(keyword)
  #   if keyword != nil
  #     where("title like?", "%#{keyword}%")
  # end
end
