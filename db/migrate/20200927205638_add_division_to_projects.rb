class AddDivisionToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :division, :string
  end
end
