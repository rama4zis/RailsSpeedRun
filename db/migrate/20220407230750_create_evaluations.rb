class CreateEvaluations < ActiveRecord::Migration[7.0]
  def change
    create_table :evaluations do |t|
      t.integer :user_id
      t.integer :guru_id
      t.date :date
      t.string :semester
      t.integer :mapel_id
      t.integer :nilai
      
      t.timestamps
    end
  end
end
