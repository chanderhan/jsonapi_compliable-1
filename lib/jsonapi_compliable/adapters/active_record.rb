module JsonapiCompliable
  module Adapters
    class ActiveRecord < Abstract
      def filter(scope, attribute, value)
        scope.where(attribute => value)
      end

      def order(scope, attribute, direction)
        scope.order(attribute => direction)
      end

      def paginate(scope, current_page, per_page)
        scope.page(current_page).per(per_page)
      end

      def sideload(scope, includes)
        scope.includes(includes)
      end

      def count(scope, attr)
        scope.count
      end

      def average(scope, attr)
        scope.average(attr).to_f
      end

      def sum(scope, attr)
        scope.sum(attr)
      end

      def maximum(scope, attr)
        scope.maximum(attr)
      end

      def minimum(scope, attr)
        scope.minimum(attr)
      end
    end
  end
end