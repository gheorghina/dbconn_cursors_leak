defmodule DBConnCursors.Repo.Migrations.AddTestModel do
  use Ecto.Migration

 def change do
    create table(:models) do
      add(:uuid, :string, null: false)
      add(:status, :string, null: false)
      add(:expires_at, :utc_datetime)

      timestamps()
    end

    create(unique_index(:models, [:uuid]))
  end
end
