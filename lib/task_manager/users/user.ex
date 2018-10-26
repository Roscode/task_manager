defmodule TaskManager.Users.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias TaskManager.Tasks.Task


  schema "users" do
    field :admin, :boolean, default: false
    field :email, :string
    has_many :tasks, Task, foreign_key: :assignee_id
    belongs_to :manager, User
    has_many :underlings, USer, foreign_key: :manager_id

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email, :admin])
    |> validate_required([:email, :admin])
  end
end
