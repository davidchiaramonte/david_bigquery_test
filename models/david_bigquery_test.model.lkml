connection: "jeremy_bq_test"

# include all the views
include: "/views/**/*.view"

datagroup: david_bigquery_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: david_bigquery_test_default_datagroup

explore: bikeshare_stations_sf {}

explore: bikeshare_status_sf {}

explore: bikeshare_trips_sf {}

explore: distance_facts {}

explore: station_fact {}
