class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses, id: false do |t|
      t.string :mapel_id, primary_key: true, null: false
      t.string :name

      t.timestamps
    end
  end
end
