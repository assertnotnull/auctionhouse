defmodule Auction.FakeRepo do
  alias Auction.Item

  @items [
    %Item{
      id: 1,
      title: "An old car",
      description: "An old luxury car",
      ends_at: ~N[2021-01-01 00:00:00]
    },
    %Item{
      id: 2,
      title: "Wargames",
      description: "An old cool movie",
      ends_at: ~N[2020-01-01 00:00:00]
    },
    %Item{
      id: 3,
      title: "Windir - 1184",
      description: "An awesome album",
      ends_at: ~N[2020-02-04 00:00:00]
    }
  ]

  def all(Item), do: @items

  def get!(Item, id) do
    Enum.find(@items, fn(item) -> item.id === id end)
  end

  def get_by(Item, attrs) do
    Enum.find(@items, fn(item) -> 
      Enum.all?(Map.keys(attrs), fn(key) -> 
        Map.get(item, key) === attrs[key]
      end)
    end)
  end
end