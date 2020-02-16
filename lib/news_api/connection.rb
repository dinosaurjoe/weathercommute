# frozen_string_literal: true

require 'news-api'

module NewsApi
  class Connection
    def initialize(query)
      @query = query
      @newsapi = News.new(ENV['NEWS_API'])
    end

    def api
      get_top_headlines
    end

    def get_top_headlines
      @newsapi.get_top_headlines(sources: 'bbc-news',
                                 q: @query)
    end
end
end
