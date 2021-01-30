require 'net/http'

class PokeGetter
  def self.get_pokes_list
    uri = 'https://pokeapi.co/api/v2/pokemon/' \
          "?limit=#{3}" \
          "&offset=#{rand(1115)}"

    poke_url = URI.parse(uri)

    req = Net::HTTP::Get.new(poke_url.to_s)
    res = Net::HTTP.start(poke_url.host, poke_url.port, use_ssl: true) do |http|
      http.request(req)
    end

    JSON.parse(res.body)['results']
  end

  def self.get_poke

  end
end
