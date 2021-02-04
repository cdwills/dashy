defmodule Dashy.Repo.Migrations.AddDashboardsWidgetsTable do
  use Ecto.Migration

  def change do
    create table(:dasbhoard_widgets, primary_key: false) do
      add(:dashboard_id, references(:dashboards, on_delete: :delete_all), primary_key: true)
      add(:widget_id, references(:widgets, on_delete: :nothing), primary_key: true)

      timestamps()
    end

    create index(:dashboard_widget, [:dashboard_id])
    create index(:dashboard_widget, [:widget_id])
    create unique_index(:dashboard_widgets, [:dashboard_id, :widget_id], name: :dashboard_id_widget_id_unique_index)
  end
end
