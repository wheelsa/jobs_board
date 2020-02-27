class CreateJobBoardMetros < ActiveRecord::Migration[6.0]
  def change
    create_table :job_board_metros do |t|
      t.string :metro_area
      t.belongs_to :candidate, null: false, foreign_key: true
      t.belongs_to :job_posting, null: false, foreign_key: true

      t.timestamps
    end
  end
end
