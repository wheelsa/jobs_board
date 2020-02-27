class CreateCandidates < ActiveRecord::Migration[6.0]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :location
      t.string :current_occupation
      t.string :years_experience

      t.timestamps
    end
  end
end
