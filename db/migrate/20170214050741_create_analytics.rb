class CreateAnalytics < ActiveRecord::Migration[5.0]
  def change
    create_table :analytics do |t|
      t.string :project_id
      t.string :download_brochure_timestamp
      t.string :callback_timestamp
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
