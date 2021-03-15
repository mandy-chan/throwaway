view: rb_pdt {
  derived_table: {
    sql: select * from demo_db.order_items ;;
    datagroup_trigger: quick_one
    indexes: ["id"]
  }

  dimension: id {
    sql: ${TABLE}.id ;;
  }
}
