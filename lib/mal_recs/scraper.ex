defmodule MalRecs.Scraper do
  use GenServer
  use Logger
  alias MalRecs.{Repo, Mal}


  def start_link(_) do
    GenServer.start_link(__MODULE__, :ok)
  end

  def init(_) do
    send(self(), :fetch_reviews)
    {:ok, %{page: 0}}
  end

  def handle_info(:fetch_reviews, %{page: page} = state) do
    {reviews, entries} = fetch_reviews(page)
    store(reviews, entries)

    Process.send_after(self(), :fetch_reviews, 500)
    {:noreply, %{page: page + 1}}
  end

  defp fetch_reviews(page) do
    
  end

  defp store(reviews, entries) do
    Enum.each entries, fn entry ->
      if entry.valid? do
        Repo.insert_or_update(Mal.Entry)
      else
        Logger.debug "Not a valid entry: " <> inspect(entry)
      end
    end

    Enum.each reviews, fn review ->
      if review.valid? do
        Repo.insert(Mal.Review)
      else
        Logger.debug "Not a valid review: " <> inspect(review)
      end
    end
  end
end
