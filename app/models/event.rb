class Event < ActiveRecord::Base
  
  validates :title, presence: true, length: {minimum: 5, maximum: 50}
  validates :description, presence: true, length: {minimum: 10, maximum: 200}
  validates :start, presence: true
  validates :start, date: true
  validates :finish, date: { allow_blank: true }
  validates :finish, date: { after: :start }, if: "!finish.nil?"
  validates :venue, presence: true, length: {minimum: 4, maximum: 50}
  validates :notes, length: {maximum: 500}
end