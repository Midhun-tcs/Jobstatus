view: static {
  sql_table_name: Looker_Dashboard.Static ;;

  dimension: application {
    type: string
    sql: ${TABLE}.Application ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}.File_name ;;
  }

  dimension: frequency {
    type: string
    sql: ${TABLE}.Frequency ;;
  }

  dimension: job_id {
    type: number
    sql: ${TABLE}.Job_ID ;;
  }

  dimension: job_name {
    type: string
    sql: ${TABLE}.Job_Name ;;
  }

  dimension: job_type {
    type: string
    sql: ${TABLE}.Job_Type ;;
  }

  dimension: project {
    type: string
    sql: ${TABLE}.Project ;;
  }

  dimension: rows_processed_threshold {
    type: number
    sql: ${TABLE}.Rows_Processed_Threshold ;;
  }

<<<<<<< HEAD
  dimension_group: sla {
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
    sql: ${TABLE}.SLA_Time ;;
  }

  dimension: sub_application {
    type: string
    sql: ${TABLE}.Sub_Application ;;
  }

  dimension_group: usual_run {
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
    sql: ${TABLE}.Usual_Run_time ;;
  }

  dimension_group: usual_start {
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
=======
  dimension: sla_time {
    type: string
    sql: ${TABLE}.SLA_Time ;;
  }

  dimension: sub_application {
    type: string
    sql: ${TABLE}.Sub_Application ;;
  }

  dimension: usual_run_time {
    type: string
    sql: ${TABLE}.Usual_Run_time ;;
  }

  dimension: usual_start_time {
    type: string
>>>>>>> branch 'dev-midhun-prasenan-mt34' of git@github.com:Midhun-tcs/Job_status.git
    sql: ${TABLE}.Usual_Start_Time ;;
  }

  measure: count {
    type: count
    drill_fields: [file_name, job_name]
  }
}
