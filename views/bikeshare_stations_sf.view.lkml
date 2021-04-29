view: bikeshare_stations_sf {
  sql_table_name: `San_Francisco.bikeshare_stations_SF`
    ;;

  dimension: dockcount {
    type: number
    sql: ${TABLE}.dockcount ;;
  }

  dimension_group: installation {
    type: time
    timeframes: [
      raw,
      date,
      time,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.installation_date ;;
  }

  dimension: landmark {
    type: string
    sql: ${TABLE}.landmark ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: station_id {
    type: number
    sql: ${TABLE}.station_id ;;
  }

  dimension: fake_field {
    type: string
    sql: ${TABLE}.fake_field ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
