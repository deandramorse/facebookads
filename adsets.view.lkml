view: adsets {
  sql_table_name: fb.adset ;;

    dimension: id {
      primary_key: yes
      type: string
      sql: ${TABLE}.id ;;
    }

    dimension: campaign_id {
      type: string
      # hidden: yes
      sql: ${TABLE}.campaign_id ;;
    }

    dimension: name {
      type: string
      sql: ${TABLE}.name ;;
    }

    measure: count {
      type: count
      drill_fields: [id, name, campaign.name, campaign.id, ads.count]
    }

}
