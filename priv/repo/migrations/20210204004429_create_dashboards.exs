defmodule Dashy.Repo.Migrations.CreateDashboards do
  use Ecto.Migration

  def change do
    create table(:dashboards) do
      add :name, :string

      timestamps()
    end
  end
end
