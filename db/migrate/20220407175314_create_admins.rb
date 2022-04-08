class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.string :email
      t.string :username
      t.string :name
      t.string :password

      t.timestamps
    end
    Admin.new(email: "admin", username: "admin", name: "PenguasaAir", password: "admin").save
  end
end
