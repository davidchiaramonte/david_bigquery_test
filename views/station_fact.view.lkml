view: station_fact {
  sql_table_name: `San_Francisco.station_fact`
    ;;

  dimension: dockcount {
    type: number
    sql: ${TABLE}.Dockcount ;;
  }

  dimension_group: installation {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Installation_Date ;;
  }

  dimension: landmark {
    type: string
    sql: ${TABLE}.Landmark ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.Latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.Longitude ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: station_id {
    type: number
    sql: ${TABLE}.Station_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
