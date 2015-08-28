require 'yelp'

class Search

  def initialize
  @client = Yelp::Client.new({ consumer_key: "a4BgQt5335e5OSt21YEcNw",
                            consumer_secret: "47Wd_XDwwwEic5FTzHbz2iHjHak",
                            token: "NGvewIWnQUnLUmNn3Boo8wZs05ByKttW",
                            token_secret: "E0FbGHegVhpkdPYHyzq8CM2t6pc"
                          })
  end
  def search(discrimination, area)

  params = { term: discrimination
  }

    response = @client.search(area, params)
    return response.businesses
end
end