# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     TaskManager.Repo.insert!(%TaskManager.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias TaskManager.Repo
alias TaskManager.Users.User

Repo.insert!(%User{email: "darren@roscode.party", admin: true})
Repo.insert!(%User{email: "bob@example.com", admin: false})
