defmodule TaskManager.Users.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias TaskManager.Tasks.Task


  schema "users" do
    field :admin, :boolean, default: false
    field :email, :string
    field :name, :string
    has_many :tasks, Task, foreign_key: :assignee_id
    belongs_to :manager, __MODULE__
    has_many :underlings, __MODULE__, foreign_key: :manager_id

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email, :admin, :manager_id])
    |> cast_assoc(:manager)
    |> validate_required([:email, :admin])
  end
end
