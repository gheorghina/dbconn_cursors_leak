# dbconn_cursors_leak
Discovered an issues with cursors increasing continuously when using streams in transactions

# related GIT issue
https://github.com/elixir-ecto/ecto/issues/3311 

# resolution
The issue was fixed in myxql by Jose Valim: https://github.com/elixir-ecto/myxql/commit/082febbe5941a6e430680d5c133bc0e74469554d 


