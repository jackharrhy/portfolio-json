require "dotenv"
begin Dotenv.load end

require "./portfolio-json"

portfolio = PortfolioJson::Portfolio.new

p portfolio.to_json

