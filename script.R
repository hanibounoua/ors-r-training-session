library(nycflights13)



con <- DBI::dbConnect(RSQLite::SQLite(), ":memory:")

copy_to(con, airports)
copy_to(con, flights)
copy_to(con, airlines)
copy_to(con, planes)
copy_to(con, weather)

dbListTables(con)




