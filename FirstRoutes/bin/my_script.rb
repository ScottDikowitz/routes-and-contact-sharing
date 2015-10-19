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
      { user: { name: "Gizmo", email: "gizmo@gizmo.gizmo" } }
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
    path: '/users/1'
  ).to_s

    args = {user: {name: "Dikowitz", email: 'Scott@appacademy.io'}}
    puts RestClient.put(url, args)
end

def delete
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/6'
  ).to_s

    puts RestClient.delete(url)
end

index
