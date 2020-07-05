require "http/client"
require "json"

class PortfolioJson::Github
  GITHUB_API_BASE = "https://api.github.com"

  GITUB_TOKEN     = ENV["PJ_GITHUB_TOKEN"]?
  GITHUB_USERNAME = ENV["PJ_GITHUB_USERNAME"]?

  struct Repo
    include JSON::Serializable

    property name : String
    property html_url : String
    property fork : Bool
    property created_at : Time
    property updated_at : Time
    property homepage : String?
    property language : String?
    property stargazers_count : Int32

    URI = "#{GITHUB_API_BASE}/users/#{GITHUB_USERNAME}/repos"

    def self.repos_of_user
      response = HTTP::Client.get(URI)
      Array(Repo).from_json(response.body)
    end
  end
end
