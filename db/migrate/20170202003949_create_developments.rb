class CreateDevelopments < ActiveRecord::Migration[5.0]
  def change
    create_table :developments do |t|
      t.string :image_filename
      t.string :desc
      t.string :development_name
      t.string :is_displayed
      t.string :development_type

      t.timestamps
    end
  end
end
