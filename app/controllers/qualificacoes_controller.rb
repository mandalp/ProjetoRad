class QualificacoesController < ApplicationController
  before_filter :authenticate_user!, :except => [:index,:show]

  
  # GET /qualificacoes
  # GET /qualificacoes.json
  def index
    @qualificacoes = Qualificacao.all
  end

  # GET /qualificacoes/1
  # GET /qualificacoes/1.json
  def show
    @qualificacao = Qualificacao.find(params[:id])
    #respond_with @qualificacao
  end

  # GET /qualificacoes/new
  # GET /qualificacoes/new.json
  def new
    @qualificacao = Qualificacao.new
    #respond_with @qualificacao
  end
  
  # POST /qualificacoes
  # POST /qualificacoes.json
  def create
    @qualificacao = Qualificacao.new(params[:qualificacao])

    respond_to do |format|
      if @qualificacao.save
        format.html { redirect_to @qualificacao, notice: 'Qualificacao criada com sucesso.' }
        format.json { render json: @qualificacao, status: :created, location: @qualificacao }
      else
        format.html { render action: "new" }
        format.json { render json: @qualificacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /qualificacoes/1/edit
  def edit
    @qualificacao = Qualificacao.find(params[:id])
  end

  # PUT /qualificacoes/1
  # PUT /qualificacoes/1.json
  def update
    @qualificacao = Qualificacao.find(params[:id])

    respond_to do |format|
      if @qualificacao.update_attributes(params[:qualificacao])
        format.html { redirect_to @qualificacao, notice: 'Qualificacao atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @qualificacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qualificacoes/1
  # DELETE /qualificacoes/1.json
  def destroy
    @qualificacao = Qualificacao.find(params[:id])
    @qualificacao.destroy

    respond_to do |format|
      format.html { redirect_to qualificacoes_url }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qualificacoes
      @qualificacao = Qualificacao.find(params[:id])
    end
end
