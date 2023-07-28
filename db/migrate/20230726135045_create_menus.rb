class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|

      t.string :title, null: false
      t.text   :calorie, null: false
      t.text   :nutrient, null: false
      t.references   :user, null: false

      t.timestamps
    end
  end
end
