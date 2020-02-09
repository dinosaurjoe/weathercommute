# frozen_string_literal: true

module OpenWeather
  class Request
    class << self

      def get(location)
        response = api(location)
        response.status == 200 ? get_json(response.body) : errors(response)
      end

      def get_json(body)
        JSON.parse(body)
      end

      def errors(response)
        error = { errors: { status: response['status'], message: response['message'] } }
        response.merge(error)
      end

      def api(location)
        Connection.new(location).api
      end
    end
  end
end
