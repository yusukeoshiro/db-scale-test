class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :a
      t.string :b
      t.string :c
      t.string :d
      t.string :e
      t.string :f
      t.string :g
      t.string :h
      t.string :i
      t.string :j
      t.string :k
      t.string :l
      t.string :m
      t.string :n

      t.timestamps null: false
    end
  end
end
