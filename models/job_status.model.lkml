connection: "lok_db_obi"

# include all the views
include: "/views/**/*.view"

datagroup: job_status_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: job_status_default_datagroup

explore: detail {}

explore: static {}

explore: summary {
  join: static {
    type: left_outer
    relationship: many_to_one
    sql_on: ${summary.job_id}=${static.job_id} ;;
  }
  join: detail {
    type: left_outer
    relationship: many_to_one
    sql_on: ${summary.job_id}=${detail.job_id} ;;
  }
}
