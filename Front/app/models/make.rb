class Make
	
	include ActiveModel::Model

	attr_accessor :nombre, :description, :activo, :created_at, :category_id, :updated_at, :url, :id
	TOKEN = 'e9e39d10-13f5-4165-ae74-1ce791be4103'



	def persisted?
		self.id.present?
	end

	def attributes
		{
			nombre: self.nombre, 
			description: self.description, 
			activo: self.activo,
			category_id: self.category_id
		}
	end 

	def self.all
		response = HTTParty.get('http://localhost:3000/makes.json', headers:{"token" => TOKEN})
		response.parsed_response.map do |category|
			new(category)
		end
	end
    
    def self.find(id)
		response = HTTParty.get("http://localhost:3000/makes/#{id}.json", headers:{"token" => TOKEN})
		 new(response.parsed_response)
	end



	def update
		response = HTTParty.put("http://localhost:3000/makes/#{self.id}.json", query: {make: attributes}, headers: {"token" => TOKEN})
		response.parsed_response
	end

	def save
		response = HTTParty.post("http://localhost:3000/makes.json", query: {make: attributes},  headers:{"token" => TOKEN})
		response.parsed_response
	end

	def destroy
		response = HTTParty.delete("http://localhost:3000/makes/#{id}.json", headers:{"token" => TOKEN})
		response.parsed_response
	end


end