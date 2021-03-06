require 'addressable/uri'
require 'rest-client'
def index
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users.json'
  ).to_s

  puts RestClient.get(url)
end

def create_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users.json'
  ).to_s
  begin
    puts RestClient.post(
      url,
      { user: { username: "Ryan"} }
    )
  rescue RestClient::Exception => e
    puts e.message
  end
end

def show
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/1'
  ).to_s

    puts RestClient.get(url)
end

def update
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/5'
  ).to_s

    args = {user: {username: 'Brian'}}
    puts RestClient.put(url, args)
end

def delete
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/5'
  ).to_s

    puts RestClient.delete(url)
end

index
