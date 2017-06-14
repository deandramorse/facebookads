view: ads {
  sql_table_name: fb.ad;;
  # API documentation here: https://developers.facebook.com/docs/marketing-api/reference/adgroup

    dimension: id {
      primary_key: yes
      type: string
      sql: ${TABLE}.id ;;
    }

    dimension: adset_id {
      type: string
      # hidden: yes
      sql: ${TABLE}.adset_id ;;
    }

    dimension: name {
      type: string
      sql: ${TABLE}.name ;;
    }

    measure: count {
      type: count
      drill_fields: [id, name, adset.name, adset.id]
    }

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  }
