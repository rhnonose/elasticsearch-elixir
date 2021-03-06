defmodule Elasticsearch.Test.Store do
  @moduledoc false
  @behaviour Elasticsearch.Store

  import Ecto.Query

  alias Elasticsearch.Test.Repo

  def load(Post, offset, limit) do
    Post
    |> offset(^offset)
    |> limit(^limit)
    |> Repo.all()
  end
end
