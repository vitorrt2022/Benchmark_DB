# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


def execute_sql_file(path, connection = ActiveRecord::Base.connection)
  require 'active_support/core_ext/object/blank.rb'
  IO.read(path).split(';').reject(&:blank?).each do |statement|
    connection.execute(statement)
  end
end

def execute_sql(command, connection = ActiveRecord::Base.connection)
  connection.execute(command)
end


execute_sql_file('/home/vitorturibio-e14/Studies/docker/myapp/sql/merchants.sql')
execute_sql_file('/home/vitorturibio-e14/Studies/docker/myapp/sql/terrorists.sql')
