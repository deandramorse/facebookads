view: ad_insights {
    sql_table_name: fb.insight ;;

   dimension: ad_id {
      type: string
      sql: ${TABLE}.ad_id ;;
    }

    dimension: ad_name {
      type: string
      sql: ${TABLE}.ad_name ;;
    }

    dimension: adset_id {
      type: number
      sql: ${TABLE}.adset_id ;;
    }

    dimension: adset_name {
      type: string
      sql: ${TABLE}.adset_name ;;
    }

    dimension: app_store_clicks {
      type: number
      sql: ${TABLE}.app_store_clicks ;;
    }

    dimension: call_to_action_clicks {
      type: number
      sql: ${TABLE}.call_to_action_clicks ;;
    }

    dimension: campaign_id {
      type: number
      sql: ${TABLE}.campaign_id ;;
    }

    dimension: campaign_name {
      type: string
      sql: ${TABLE}.campaign_name ;;
    }

    dimension: canvas_avg_view_percent {
      type: number
      sql: ${TABLE}.canvas_avg_view_percent ;;
    }

    dimension: canvas_avg_view_time {
      type: number
      sql: ${TABLE}.canvas_avg_view_time ;;
    }

    dimension: clicks {
      type: number
      sql: ${TABLE}.clicks ;;
    }

    dimension: cost_per_inline_link_click {
      type: number
      sql: ${TABLE}.cost_per_inline_link_click ;;
    }

    dimension: cost_per_inline_post_engagement {
      type: number
      sql: ${TABLE}.cost_per_inline_post_engagement ;;
    }

    dimension: cost_per_total_action {
      type: number
      sql: ${TABLE}.cost_per_total_action ;;
    }

    dimension: cpc {
      type: number
      sql: ${TABLE}.cpc ;;
    }

    dimension: cpm {
      type: number
      sql: ${TABLE}.cpm ;;
    }

    dimension: cpp {
      type: number
      sql: ${TABLE}.cpp ;;
    }

    dimension: ctr {
      type: number
      sql: ${TABLE}.ctr ;;
    }

    dimension_group: date {
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
      sql: ${TABLE}.date ;;
    }

    dimension: deeplink_clicks {
      type: number
      sql: ${TABLE}.deeplink_clicks ;;
    }

    dimension: frequency {
      type: number
      sql: ${TABLE}.frequency ;;
    }

    dimension: impressions {
      type: number
      sql: ${TABLE}.impressions ;;
    }

    dimension: inline_link_click_ctr {
      type: number
      sql: ${TABLE}.inline_link_click_ctr ;;
    }

    dimension: inline_link_clicks {
      type: number
      sql: ${TABLE}.inline_link_clicks ;;
    }

    dimension: inline_post_engagement {
      type: number
      sql: ${TABLE}.inline_post_engagement ;;
    }

    dimension: newsfeed_avg_position {
      type: number
      sql: ${TABLE}.newsfeed_avg_position ;;
    }

    dimension: newsfeed_clicks {
      type: number
      sql: ${TABLE}.newsfeed_clicks ;;
    }

    dimension: newsfeed_impressions {
      type: number
      sql: ${TABLE}.newsfeed_impressions ;;
    }

    dimension: objective {
      type: string
      sql: ${TABLE}.objective ;;
    }

    dimension: reach {
      type: number
      sql: ${TABLE}.reach ;;
    }

    dimension: relevance_score {
      type: string
      sql: ${TABLE}.relevance_score ;;
    }

    dimension: social_clicks {
      type: number
      sql: ${TABLE}.social_clicks ;;
    }

    dimension: social_impressions {
      type: number
      sql: ${TABLE}.social_impressions ;;
    }

    dimension: social_reach {
      type: number
      sql: ${TABLE}.social_reach ;;
    }

    dimension: social_spend {
      type: number
      sql: ${TABLE}.social_spend ;;
    }

    dimension: spend {
      type: number
      sql: ${TABLE}.spend ;;
    }

    dimension: total_action_value {
      type: number
      sql: ${TABLE}.total_action_value ;;
    }

    dimension: total_actions {
      type: number
      sql: ${TABLE}.total_actions ;;
    }

    dimension: unique_clicks {
      type: number
      sql: ${TABLE}.unique_clicks ;;
    }

    dimension: website_clicks {
      type: number
      sql: ${TABLE}.website_clicks ;;
    }

  measure: total_reach {
    type: sum
    sql: ${TABLE}.reach ;;
  }

  measure: total_clicks {
    type: sum
    sql: ${TABLE}.clicks ;;
  }

  measure: total_impressions {
    type: sum
    sql: ${TABLE}.impressions ;;
  }

  measure: total_inline_link_clicks {
    type: sum
    sql: ${TABLE}.inline_link_clicks ;;
  }

  measure: avg_frequency {
    description: "the average number of times your ad was served to each person"
    type: average
    sql: ${TABLE}.frequency ;;
  }

  measure: avg_cpm {
    description: "The average cost you've paid to have 1,000 impressions on your ad."
    type: average
    sql: ${TABLE}.cpm ;;
    value_format_name: usd
  }

  measure: avg_cpp {
    description: "The average cost you've paid to have your ad served to 1,000 unique people."
    type: average
    sql: ${TABLE}.cpp ;;
    value_format_name: usd
  }

  measure: total_spend {
    type: sum
    sql: ${TABLE}.spend ;;
    value_format_name: usd
  }

  measure: avg_ctr {
    type: average
    sql: ${TABLE}.ctr ;;
  }

  measure: avg_cpc {
    type: average
    sql: ${TABLE}.cpc ;;
    value_format_name: usd
  }

 measure: avg_inline_link_click_ctr {
    type: average
    sql: ${TABLE}.inline_link_click_ctr ;;
  }

  measure: avg_cost_per_inline_link_click {
    type: average
    sql: ${TABLE}.cost_per_inline_link_click ;;
  }


}
