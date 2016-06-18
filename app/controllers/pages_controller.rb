class PagesController < ApplicationController
	def index
		@nombre = params[:nombre]
		@email = params[:email]
		@edad = params[:edad]
	end
	def guardar_registro
		@nombre = params[:nombre]
		@email = params[:email]
		@edad = params[:edad]
		unless params[:nombre].blank? && params[:email].blank? && params[:edad].blank?
			Registro.create(nombre:params[:nombre],email:params[:email],edad:params[:edad])
			redirect_to pages_x_path, 
			notice: "El usuario fue guardado"
		end
	end
	def landing
		render layout: 'layout2'
	end
end
