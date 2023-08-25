class CreateHeroChallenges < ActiveRecord::Migration[6.1]
  def change
    create_table :hero_challenges do |t|

      t.timestamps
    end
  end
end
