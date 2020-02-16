# frozen_string_literal: true

module NewsApi
  class Request
    class << self

      def get(query)
        response = api(query)
        # response.status == 200 ? get_json(response.body) : errors(response)
      end

      def get_json(body)
        JSON.parse(body)
      end

    #   def errors(response)
    #     error = { errors: { status: response['status'], message: response['message'] } }
    #     response.merge(error)
    #   end

      def api(query)
        Connection.new(query).api
      end
    end
  end
end
