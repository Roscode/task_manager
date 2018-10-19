defmodule TaskManager.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset

  alias TaskManager.Users.User
  alias TaskManager.Repo


  schema "tasks" do
    field :completed, :boolean, default: false
    field :description, :string
    field :name, :string
    field :time_worked, :integer, default: 0
    belongs_to :assignee, User

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:name, :description, :completed, :assignee_id, :time_worked])
    |> validate_required([:name, :completed, :time_worked])
  end
end
