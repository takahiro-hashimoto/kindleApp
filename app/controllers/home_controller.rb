class HomeController < ApplicationController
  def top

    require 'amazon/ecs'

    Amazon::Ecs.options = {
      :associate_tag => 'taka1202-22',
      :AWS_access_key_id => 'AKIAIWVY7XMUBJLX43AQ',
      :AWS_secret_key => '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',
    }

    @res = Amazon::Ecs.item_search(
        'RX100',
        :browse_node    => '16462091',
        :response_group => 'ItemAttributes, Images',
        :search_index   => 'Electronics',
        :country        => 'jp')

  end

  def about
  end
end
