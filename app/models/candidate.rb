class Candidate < ApplicationRecord
  has_many :job_board_metros
  has_many :job_postings, through: :job_board_metros
end
