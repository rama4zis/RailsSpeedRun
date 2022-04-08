class AddJenisToEvaluations < ActiveRecord::Migration[7.0]
  def change
    add_column :evaluations, :jenis, :string, after: :semester
  end
end
