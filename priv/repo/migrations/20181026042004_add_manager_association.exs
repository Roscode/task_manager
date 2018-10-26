defmodule TaskManager.Repo.Migrations.AddManagerAssociation do
  use Ecto.Migration

  def change do
    alter table("users") do
      add :manager_id, :int
    end
  end

end
