class CreateEaters < ActiveRecord::Migration[6.0]
  def change
    create_table :eaters do |t|
      t.string :name
      t.integer :pr_hot_dogs
      t.integer :age
      t.string :nationality

      t.timestamps
    end
  end
end
