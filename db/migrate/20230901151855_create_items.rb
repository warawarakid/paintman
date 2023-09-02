class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|

      t.timestamps

      t.integer :color_id, null: false
      t.references :user, null: false, foreign_key: true

    end
  end
end
