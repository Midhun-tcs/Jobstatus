view: detail {
  sql_table_name: Looker_Dashboard.Detail ;;

  dimension_group: end {
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
    sql: ${TABLE}.End_Time ;;
  }

  dimension: failed_at {
    type: string
    sql: ${TABLE}.Failed_at ;;
  }

  dimension: failed_on {
    type: string
    sql: ${TABLE}.Failed_on ;;
  }

  dimension: id_description {
    type: string
    hidden: yes
    sql: ${TABLE}.ID_Description ;;
  }

  dimension: ID_desc {
    type: string
    sql: case when ${run_id}='controlm_prod' then 'Admin' else 'User' end ;;
  }

  dimension: job_id {
    type: number
    sql: ${TABLE}.Job_ID ;;
  }

  dimension: job_name {
    type: string
    sql: ${TABLE}.Job_Name ;;
  }

  dimension: last_ran {
    type: string
    sql: ${TABLE}.Last_Ran ;;
  }

  dimension: output_code {
    type: string
    sql: ${TABLE}.Output_Code ;;
  }

  dimension: priority_flag {
    type: string
    sql: ${TABLE}.Priority_Flag ;;
  }

  dimension: rows_processed {
    type: number
    sql: ${TABLE}.Rows_processed ;;
  }

  dimension: run_id {
    type: string
    sql: ${TABLE}.Run_id ;;
  }

  dimension_group: run {
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
    sql: ${TABLE}.Run_time ;;
  }

  dimension: server_name {
    type: string
    sql: ${TABLE}.Server_name ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.Start_Time ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  measure: count {
    type: count
    drill_fields: [job_name, server_name]
  }
}
