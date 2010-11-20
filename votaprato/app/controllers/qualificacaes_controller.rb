class QualificacaesController < ApplicationController
  # GET /qualificacaes
  # GET /qualificacaes.xml
  def index
    @qualificacaes = Qualificacao.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @qualificacaes }
    end
  end

  # GET /qualificacaes/1
  # GET /qualificacaes/1.xml
  def show
    @qualificacao = Qualificacao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @qualificacao }
    end
  end

  # GET /qualificacaes/new
  # GET /qualificacaes/new.xml
  def new
    @qualificacao = Qualificacao.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @qualificacao }
    end
  end

  # GET /qualificacaes/1/edit
  def edit
    @qualificacao = Qualificacao.find(params[:id])
  end

  # POST /qualificacaes
  # POST /qualificacaes.xml
  def create
    @qualificacao = Qualificacao.new(params[:qualificacao])

    respond_to do |format|
      if @qualificacao.save
        format.html { redirect_to(@qualificacao, :notice => 'Qualificacao was successfully created.') }
        format.xml  { render :xml => @qualificacao, :status => :created, :location => @qualificacao }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @qualificacao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /qualificacaes/1
  # PUT /qualificacaes/1.xml
  def update
    @qualificacao = Qualificacao.find(params[:id])

    respond_to do |format|
      if @qualificacao.update_attributes(params[:qualificacao])
        format.html { redirect_to(@qualificacao, :notice => 'Qualificacao was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @qualificacao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /qualificacaes/1
  # DELETE /qualificacaes/1.xml
  def destroy
    @qualificacao = Qualificacao.find(params[:id])
    @qualificacao.destroy

    respond_to do |format|
      format.html { redirect_to(qualificacaes_url) }
      format.xml  { head :ok }
    end
  end
end
