class AddAppSecreteToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :app_secrete, :string
  end
end
