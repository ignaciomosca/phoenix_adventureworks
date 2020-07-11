defmodule PhoenixAdeventureworks.Listings do
  @moduledoc """
  The Listings context.
  """

  import Ecto.Query, warn: true
  alias PhoenixAdeventureworks.Repo

  alias PhoenixAdeventureworks.Listings.Person

  @doc """
  Returns the list of person.

  ## Examples

      iex> list_person()
      [%Person{}, ...]

  """
  def list_person do
    Repo.all(Person)
  end

  @doc """
  Gets a single person.

  Raises if the Person does not exist.

  ## Examples

      iex> get_person!(123)
      %Person{}

  """
  def get_person!(id), do: Repo.get!(Person, id)

  @doc """
  Creates a person.

  ## Examples

      iex> create_person(%{field: value})
      {:ok, %Person{}}

      iex> create_person(%{field: bad_value})
      {:error, ...}

  """
  def create_person(attrs \\ %{}) do
    raise "TODO"
  end

  @doc """
  Updates a person.

  ## Examples

      iex> update_person(person, %{field: new_value})
      {:ok, %Person{}}

      iex> update_person(person, %{field: bad_value})
      {:error, ...}

  """
  def update_person(%Person{} = person, attrs) do
    raise "TODO"
  end

  @doc """
  Deletes a Person.

  ## Examples

      iex> delete_person(person)
      {:ok, %Person{}}

      iex> delete_person(person)
      {:error, ...}

  """
  def delete_person(%Person{} = person) do
    raise "TODO"
  end

  @doc """
  Returns a data structure for tracking person changes.

  ## Examples

      iex> change_person(person)
      %Todo{...}

  """
  def change_person(%Person{} = person, _attrs \\ %{}) do
    raise "TODO"
  end
end
