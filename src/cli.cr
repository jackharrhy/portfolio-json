require "dotenv"
begin
  Dotenv.load
end

require "./portfolio-json"

portfolio = PortfolioJson::Portfolio.new

puts portfolio.to_json
