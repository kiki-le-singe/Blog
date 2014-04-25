define (require) ->
  'use strict'

  {
    header: require 'hbs!tpl/header/header'
    articleSummaryItemView:\
     require 'hbs!tpl/article/article_summary_item_view'
  }