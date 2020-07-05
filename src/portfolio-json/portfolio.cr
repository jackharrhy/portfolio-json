class PortfolioJson::Portfolio
  include JSON::Serializable

  property repos : Array(PortfolioJson::Github::Repo) = PortfolioJson::Github::Repo.repos_of_user

  def initialize
  end
end
