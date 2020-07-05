class PortfolioJson::Portfolio
  include JSON::Serializable

  property repos : Array(Github::Repo) = Github::Repo.repos_of_user

  def initialize
  end
end
