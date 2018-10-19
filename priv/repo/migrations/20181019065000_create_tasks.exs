defmodule TaskManager.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :name, :string
      add :description, :text
      add :completed, :boolean, default: false, null: false
      add :time_worked, :integer
      add :assignee_id, references(:users, on_delete: :nilify_all)

      timestamps()
    end

  end
end
