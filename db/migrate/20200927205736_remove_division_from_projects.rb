class RemoveDivisionFromProjects < ActiveRecord::Migration[6.0]
  def change
    remove_column :projects, :division, :string
  end
end
