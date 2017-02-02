class CreateDevelopments < ActiveRecord::Migration[5.0]
  def change
    create_table :developments do |t|
      t.string :image_link
      t.string :desc
      t.string :development_name

      t.timestamps
    end
  end
end
