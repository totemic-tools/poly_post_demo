defmodule Demo.Query do
  alias PolyPost.Depot

  # API

  def all do
    list_resources()
    |> Stream.flat_map(fn resource -> Depot.get_all(resource) end)
    |> Stream.map(fn {_, item} -> item end)
    |> Enum.sort_by(fn %{date: date} -> date end, {:desc, Date})
  end

  def all(resource) do
    resource
    |> Depot.get_all()
    |> Enum.map(fn {_, item} -> item end)
    |> Enum.sort_by(fn %{date: date} -> date end, {:desc, Date})
  end

  def find(resource, key), do: Depot.find(resource, key)

  # Private

  defp list_resources do
    Application.fetch_env!(:poly_post, :resources)
    |> get_in([:content])
    |> Keyword.keys()
  end
end
