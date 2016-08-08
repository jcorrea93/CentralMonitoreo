class Service
	include ActiveModel::Model

	attr_accessor :nombre, :description, :activo, :created_at,  :updated_at, :url, :id
	TOKEN = 'e9e39d10-13f5-4165-ae74-1ce791be4103'



	def persisted?
		self.id.present?
	end

	def attributes
		{
			nombre: self.nombre, 
			description: self.description, 
			activo: self.activo
		}
	end 

	def self.all
		response = HTTParty.get('http://localhost:3000/services.json', headers:{"token" => TOKEN})
		response.parsed_response.map do |service|
			new(service)
		end
	end
    
    def self.find(id)
		response = HTTParty.get("http://localhost:3000/services/#{id}.json", headers:{"token" => TOKEN})
		 new(response.parsed_response)
	end



	def update
		response = HTTParty.put("http://localhost:3000/services/#{self.id}.json", query: {service: attributes}, headers: {"token" => TOKEN})
		response.parsed_response
	end

	def save
		response = HTTParty.post("http://localhost:3000/services.json", query: {service: attributes},  headers:{"token" => TOKEN})
		response.parsed_response
	end

	def destroy
		response = HTTParty.delete("http://localhost:3000/services/#{id}.json", headers:{"token" => TOKEN})
		response.parsed_response
	end


end
