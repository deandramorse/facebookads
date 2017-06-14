view: ad_insights_by_placement_and_device {
  sql_table_name: fb.insights_placement_and_device ;;

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

  dimension: call_to_action_clicks {
    type: number
    sql: ${TABLE}.call_to_action_clicks ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
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

  dimension: impression_device {
    type: string
    sql: ${TABLE}.impression_device ;;
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

  dimension: objective {
    type: string
    sql: ${TABLE}.objective ;;
  }

  dimension: placement {
    type: string
    sql: ${TABLE}.placement ;;
  }

  dimension: reach {
    type: number
    sql: ${TABLE}.reach ;;
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

  dimension: spend {
    type: number
    sql: ${TABLE}.spend ;;
  }

  dimension: total_action_value {
    type: number
    sql: ${TABLE}.total_action_value ;;
  }

  dimension: total_actions_dim {
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

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  ## AGGREGATE MEASURES

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_clicks {
    type: sum
    sql: ${TABLE}.clicks ;;
    drill_fields: [impression_device, placement]
  }

  measure: avg_cpc {
    type: average
    sql: ${TABLE}.cpc ;;
  }

  measure: avg_cpm {
    type: average
    sql: ${TABLE}.cpm ;;
  }

  measure: avg_cpp {
    type: average
    sql: ${TABLE}.cpp ;;
  }

  measure: avg_ctr {
    type: average
    sql: ${TABLE}.ctr ;;
  }

  measure: avg_frequency {
    type: average
    sql: ${TABLE}.frequency ;;
  }

  measure: total_impressions {
    type: sum
    sql: ${TABLE}.impressions ;;
  }

  measure: total_reach {
    type: sum
    sql: ${TABLE}.reach ;;
    drill_fields: [impression_device, placement]
  }

  measure: total_spend {
    type: sum
    sql: ${TABLE}.spend ;;
    drill_fields: [impression_device, placement]
  }

  measure: total_actions {
    type: sum
    sql: ${TABLE}.total_actions ;;
    drill_fields: [impression_device, placement]
  }
}
