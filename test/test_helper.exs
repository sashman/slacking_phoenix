ExUnit.start

Mix.Task.run "ecto.create", ~w(-r SlackingPhoenix.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r SlackingPhoenix.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(SlackingPhoenix.Repo)

