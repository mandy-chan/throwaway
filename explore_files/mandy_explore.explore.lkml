include: "/**/*.view.lkml"

explore: users {
  view_name: users
  symmetric_aggregates: no
  join: user_data {
    from:  user_data
    type: inner
    relationship: many_to_many
    sql_on: ${users.id}= ${user_data.user_id};;
  }
}
