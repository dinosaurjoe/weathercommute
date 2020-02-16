# frozen_string_literal: true

module NewsApi
  class NewsToday < Base
    def self.find_by_query(query)
      response = NewsApi::Request.get(query)
    end
  end
end
