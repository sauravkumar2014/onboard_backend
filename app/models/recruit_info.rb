class RecruitInfo < ApplicationRecord
  belongs_to :user
  has_one :document
  has_many :requests
end
