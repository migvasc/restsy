class ZomatoController < ApplicationController
  def buscar
  end

  def listar_restaurantes
    
      require 'net/http'
      require 'uri'
      uri = URI.parse(URI.encode("https://developers.zomato.com/api/v2.1/search?entity_id="+params[:id]+"&entity_type=city&cuisines="+params[:id_c]+"&category=1&count=100"))
      request = Net::HTTP::Get.new(uri)
      request["Accept"] = "application/json"
      request["User-Key"] = "c79e686cb6becf6cfe454690af2f9872"
      
      req_options = {
        use_ssl: uri.scheme == "https",
      }
      
      response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
        http.request(request)
      end
       array = JSON.parse response.body 
       @array_list = array["restaurants"].map { |r| r['restaurant'] } 
       
  end
  
    def listar
    
      require 'net/http'
      require 'uri'
      uri = URI.parse(URI.encode("https://developers.zomato.com/api/v2.1/cuisines?city_id="+params[:id]))
      request = Net::HTTP::Get.new(uri)
      request["Accept"] = "application/json"
      request["User-Key"] = "c79e686cb6becf6cfe454690af2f9872"
      
      req_options = {
        use_ssl: uri.scheme == "https",
      }
      
      response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
        http.request(request)
      end
       array = JSON.parse response.body 
       array_list = array["cuisines"].map { |v| v['cuisine'] } 
       @a =array_list.map {|v| [ v['cuisine_name'], v['cuisine_id'] ] } 
  end
  
end
