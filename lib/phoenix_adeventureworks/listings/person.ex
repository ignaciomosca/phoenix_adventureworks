defmodule PhoenixAdeventureworks.Listings.Person do
    use Ecto.Schema
  
    @schema_prefix "person"

    @primary_key {:businessentityid, :id, autogenerate: true}
    @derive {Phoenix.Param, key: :businessentityid}
    schema "person" do
      field :persontype, :string
      field :firstname, :string
      field :lastname, :string
      field :middlename, :string
      field :suffix, :string
      field :emailpromotion, :integer
    end

  end