project_name: "david_bigquery_test"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }


constant: station_fact {
  value: "station_fact"
  export: override_optional
  }
