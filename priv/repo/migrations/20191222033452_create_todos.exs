defmodule Tasker.Repo.Migrations.CreateTodos do
  use Ecto.Migration

  def change do
    create table(:todos) do
      add :title, :string
      add :description, :text
      add :is_complete, :boolean, default: false, null: false

      timestamps()
    end

  end
end
