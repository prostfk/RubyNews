class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :name, null: false, default: ''
      t.string :content, null: false, default: ''
      t.string :content, null: false, default: ''
      t.string :path_to_file, null: false, default: ''

      t.timestamps
    end
  end
end
