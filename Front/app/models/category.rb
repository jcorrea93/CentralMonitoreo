class Category
  
	include ActiveModel::Model


	attr_accessor :nombre, :description, :activo, :created_at, :service_id, :updated_at, :url, :id
	TOKEN = 'e9e39d10-13f5-4165-ae74-1ce791be4103'



	def persisted?
		self.id.present?
	end

	def attributes
		{
			nombre: self.nombre, 
			description: self.description, 
			activo: self.activo,
			service_id: self.service_id 
		}
	end 

	def self.all
		response = HTTParty.get('http://localhost:3000/categories.json', headers:{"token" => TOKEN})
		response.parsed_response.map do |category|
			new(category)
		end
	end
    
    def self.find(id)
		response = HTTParty.get("http://localhost:3000/categories/#{id}.json", headers:{"token" => TOKEN})
		 new(response.parsed_response)
	end



	def update
		response = HTTParty.put("http://localhost:3000/categories/#{self.id}.json", query: {category: attributes}, headers: {"token" => TOKEN})
		response.parsed_response
	end

	def save
		response = HTTParty.post("http://localhost:3000/categories.json", query: {category: attributes},  headers:{"token" => TOKEN})
		response.parsed_response
	end

	def destroy
		response = HTTParty.delete("http://localhost:3000/categories/#{id}.json", headers:{"token" => TOKEN})
		response.parsed_response
	end




end