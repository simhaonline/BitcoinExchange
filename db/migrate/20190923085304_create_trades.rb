class CreateTrades < ActiveRecord::Migration[5.2]
  def change
    create_table :trades do |t|
      t.string      :side, null: false
      t.integer     :price, null: false
      t.float     :size, null: false
      t.timestamps null: true
    end
  end
end


