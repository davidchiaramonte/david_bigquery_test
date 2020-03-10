view: distance_facts {
  sql_table_name: `San_Francisco.distance_facts`
    ;;

  dimension: bicycling_seconds {
    type: number
    sql: ${TABLE}.bicycling_seconds ;;
  }

  dimension: bicycling_yards {
    type: number
    sql: ${TABLE}.bicycling_yards ;;
  }

  dimension: driving_seconds {
    type: number
    sql: ${TABLE}.driving_seconds ;;
  }

  dimension: driving_yards {
    type: number
    sql: ${TABLE}.driving_yards ;;
  }

  dimension: lat1 {
    type: number
    sql: ${TABLE}.lat1 ;;
  }

  dimension: lat2 {
    type: number
    sql: ${TABLE}.lat2 ;;
  }

  dimension: long1 {
    type: number
    sql: ${TABLE}.long1 ;;
  }

  dimension: long2 {
    type: number
    sql: ${TABLE}.long2 ;;
  }

  dimension: walking_seconds {
    type: number
    sql: ${TABLE}.walking_seconds ;;
  }

  dimension: walking_yards {
    type: number
    sql: ${TABLE}.walking_yards ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
