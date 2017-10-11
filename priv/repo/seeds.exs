# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     MalRecs.Repo.insert!(%MalRecs.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias MalRecs.Mal.EntryType

MalRecs.Repo.insert!(%EntryType{
  name: "Anime"
})
MalRecs.Repo.insert!(%EntryType{
  name: "Manga"
})