class RestaurantesController < ApplicationController
	
	before_filter :authenticate_user!, :except => [:index,:show]
	
	respond_to :html, :xml,  :json
	def index
		@restaurantes = Restaurante.order("nome").page(params['page'])
		respond_with @restaurantes
	end

	def show
		@restaurante = Restaurante.find(params[:id])
		respond_with @restaurante
	end

	def new
		@restaurante = Restaurante.new
		respond_with @restaurante

	end

	def create
		@restaurante = Restaurante.new(params[:restaurante])
    respond_to do |format|
      if @restaurante.save
        format.html { redirect_to @restaurante, notice: 'Restaurante criado com sucesso.' }
        format.json { render json: @restaurante, status: :created, location: @restaurante }
      else
        format.html { render action: "new" }
        format.json { render json: @restaurante.errors, status: :unprocessable_entity }
      end
    end
  end

	def edit
		@restaurante = Restaurante.find(params[:id])
	end

	def update
		@restaurante = Restaurante.find(params[:id])
    respond_to do |format|
      if @restaurante.update_attributes(params[:cliente])
        format.html { redirect_to @restaurante, notice: 'Restaurante atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @restaurante.errors, status: :unprocessable_entity }
      end
    end
  end

	def destroy
		@restaurante = Restaurante.find(params[:id])
		@restaurante.destroy

    respond_to do |format|
      format.html { redirect_to restaurantes_url }
      format.json { head :no_content }
    end
  end

	# def busca
	# 	@restaurante = Restaurante.find_by_nome(params[:nome])
	# 	if @restaurante
	# 		redirect_to :action => 'show', :id => @restaurante.id
	# 	else
	# 		flash[:notice] = 'Restaurante não encontrado.'
	# 		redirect_to :action => 'index'
	# 	end
	# end
	

end
