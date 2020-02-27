class CreateJobPostings < ActiveRecord::Migration[6.0]
  def change
    create_table :job_postings do |t|
      t.string :title
      t.string :company
      t.string :requirements
      t.string :job_description

      t.timestamps
    end
  end
end
