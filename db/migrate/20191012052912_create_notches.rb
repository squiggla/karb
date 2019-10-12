class CreateNotches < ActiveRecord::Migration[6.0]
  def change
    create_table :notches, id: :uuid do |t|
      t.integer :notch
    end
  end
end
