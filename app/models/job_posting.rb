class JobPosting < ApplicationRecord
  has_many :job_board_metros
  has_many :candidates, through: :job_board_metros
end
