connection: "lok_db_obi"

# include all the views
include: "/views/**/*.view"

datagroup: job_status_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: job_status_default_datagroup


explore: detail {
  join: static {
    type: left_outer
    relationship: many_to_one
    sql_on: ${detail.job_id}=${static.job_id} ;;
}
}

explore: static {}

explore: summary {
  join: static {
    type: left_outer
    relationship: many_to_one
    sql_on: ${static.job_id}=${static.job_id} ;;
}
}
