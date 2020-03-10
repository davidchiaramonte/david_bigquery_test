view: bikeshare_status_sf {
  sql_table_name: `San_Francisco.bikeshare_status_SF`
    ;;

  dimension: bikes_available {
    type: number
    sql: ${TABLE}.bikes_available ;;
  }

  dimension: docks_available {
    type: number
    sql: ${TABLE}.docks_available ;;
  }

  dimension: station_id {
    type: number
    sql: ${TABLE}.station_id ;;
  }

  dimension_group: time {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.time ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
