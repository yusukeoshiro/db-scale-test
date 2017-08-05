class AddIndexToTest < ActiveRecord::Migration
  def change
  	add_index :tests, :a
  	add_index :tests, :b
  	add_index :tests, :c
  	add_index :tests, :d
  	add_index :tests, :e
  	add_index :tests, :f
  	add_index :tests, :g
  	add_index :tests, :h
  	add_index :tests, :i
  	add_index :tests, :j
  	add_index :tests, :k
  	add_index :tests, :l
  	add_index :tests, :m
  	add_index :tests, :n
  end
end
