class CreateStudioActors < ActiveRecord::Migration[5.2]
  def change
    create_table :studio_actors do |t|
      t.references :studio, foreign_key: true
      t.references :actor, foreign_key: true
      t.timestamps
    end
  end
end
