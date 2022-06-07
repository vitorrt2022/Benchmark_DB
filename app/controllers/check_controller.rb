require 'benchmark'
class CheckController < ApplicationController
  def check
    time = Benchmark.measure {
      result = ActiveRecord::Base.connection.execute("
        set pg_similarity.jarowinkler_threshold to 0.9;

        INSERT INTO terrorist_matches (user_id, m_name, match)
        SELECT user_id, legal_representative_name,jarowinkler(legal_representative_name,terrorists.name)
        FROM merchants
        INNER JOIN terrorists ON legal_representative_name ~@@ terrorists.name;

        show pg_similarity.jarowinkler_threshold;
      ")
    }
    debugger
    render json: "success", status: 200
  end
end
