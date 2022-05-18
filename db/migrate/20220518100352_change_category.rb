class ChangeCategory < ActiveRecord::Migration[7.0]
  def change
    rename_column :restaurants, :categroy, :category
  end
end
