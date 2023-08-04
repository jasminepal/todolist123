class Todoing < ApplicationRecord
  validates :task, presence: true
  belongs_to :user
end