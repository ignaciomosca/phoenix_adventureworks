defmodule PhoenixAdeventureworks.ListingsTest do
  use PhoenixAdeventureworks.DataCase

  alias PhoenixAdeventureworks.Listings

  describe "person" do
    alias PhoenixAdeventureworks.Listings.Person

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def person_fixture(attrs \\ %{}) do
      {:ok, person} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Listings.create_person()

      person
    end

    test "list_person/0 returns all person" do
      person = person_fixture()
      assert Listings.list_person() == [person]
    end

    test "get_person!/1 returns the person with given id" do
      person = person_fixture()
      assert Listings.get_person!(person.id) == person
    end

    test "create_person/1 with valid data creates a person" do
      assert {:ok, %Person{} = person} = Listings.create_person(@valid_attrs)
    end

    test "create_person/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Listings.create_person(@invalid_attrs)
    end

    test "update_person/2 with valid data updates the person" do
      person = person_fixture()
      assert {:ok, %Person{} = person} = Listings.update_person(person, @update_attrs)
    end

    test "update_person/2 with invalid data returns error changeset" do
      person = person_fixture()
      assert {:error, %Ecto.Changeset{}} = Listings.update_person(person, @invalid_attrs)
      assert person == Listings.get_person!(person.id)
    end

    test "delete_person/1 deletes the person" do
      person = person_fixture()
      assert {:ok, %Person{}} = Listings.delete_person(person)
      assert_raise Ecto.NoResultsError, fn -> Listings.get_person!(person.id) end
    end

    test "change_person/1 returns a person changeset" do
      person = person_fixture()
      assert %Ecto.Changeset{} = Listings.change_person(person)
    end
  end
end
