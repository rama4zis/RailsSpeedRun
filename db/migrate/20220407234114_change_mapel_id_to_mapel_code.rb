class ChangeMapelIdToMapelCode < ActiveRecord::Migration[7.0]
  def change
    remove_column :evaluations, :mapel_id
    add_column :evaluations, :mapel_code, :string

    rename_column :courses, :mapel_id, :mapel_code
  end
end
