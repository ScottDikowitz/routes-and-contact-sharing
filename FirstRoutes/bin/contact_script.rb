require 'addressable/uri'
require 'rest-client'
def index
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contacts.json'
  ).to_s

  puts RestClient.get(url)
end

def create_contact
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contacts.json'
  ).to_s
  begin
    puts RestClient.post(
      url,
      { contact: { name: "Phil", email: "phil@email.com", user_id: 2 } }
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
    path: '/contacts/1'
  ).to_s

    puts RestClient.get(url)
end

def update
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contacts/5'
  ).to_s

    args = {contact: {name: "Tom", email: "tom@mail"}}
    puts RestClient.put(url, args)
end

def delete
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contacts/5'
  ).to_s

    puts RestClient.delete(url)
end
