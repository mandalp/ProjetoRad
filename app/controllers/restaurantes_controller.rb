class RestaurantesController < ApplicationController
	
	before_filter :authenticate_user!, :except => [:index,:show]
	
	respond_to :html, :xml,  :json
	def index
		#@restaurantes = Restaurante.order("restaurante_id").page(params['page']).per(5)
		@restaurantes = Restaurante.all
		respond_with @restaurantes
	end


	def show
		@restaurante = Restaurante.find(params[:id])
		respond_with @restaurantes

	end

	def new
		@restaurante = Restaurante.new
		respond_with @restaurantes

	end

	def create
		@restaurante = Restaurante.new(params[:restaurante])
		if @restaurante.save
			redirect_to(action: "show", id: @restaurante)
		else
			render action: "new"
		end
	end

	def edit
		@restaurante = Restaurante.find(params[:id])
	end

	def update
		@restaurante = Restaurante.find(params[:id])
		if @restaurante.update_attributes(params[:restaurante])
			redirect_to(action: "show", id: @restaurante)
		else
			render action: "edit"
		end
	end

	def destroy
		@restaurante = Restaurante.find(params[:id])
		@restaurante.destroy

		redirect_to(action: "index")
	end

	def busca
		@restaurante = Restaurante.find_by_nome(params[:nome])
		if @restaurante
			redirect_to :action => 'show', :id => @restaurante.id
		else
			flash[:notice] = 'Restaurante não encontrado.'
			redirect_to :action => 'index'
		end
	end
	
	def response
	end
	
	private
    # Use callbacks to share common setup or constraints between actions.
    #def set_restaurantes
      #@restaurante = Restaurante.friendly.find(params[:id])
    #end
    
        # Never trust parameters from the scary internet, only allow the white list through.
    def restaurantes_params
      params.require(:restaurante).permit(:belongs_to, :nome)
    end
end
