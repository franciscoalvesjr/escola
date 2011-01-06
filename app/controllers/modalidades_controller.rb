class ModalidadesController < ApplicationController
  # GET /modalidades
  # GET /modalidades.xml
  def index
    @modalidades = Modalidade.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @modalidades }
    end
  end

  # GET /modalidades/1
  # GET /modalidades/1.xml
  def show
    @modalidade = Modalidade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @modalidade }
    end
  end

  # GET /modalidades/new
  # GET /modalidades/new.xml
  def new
    @modalidade = Modalidade.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @modalidade }
    end
  end

  # GET /modalidades/1/edit
  def edit
    @modalidade = Modalidade.find(params[:id])
  end

  # POST /modalidades
  # POST /modalidades.xml
  def create
    @modalidade = Modalidade.new(params[:modalidade])

    respond_to do |format|
      if @modalidade.save
        format.html { redirect_to(@modalidade, :notice => 'Modalidade was successfully created.') }
        format.xml  { render :xml => @modalidade, :status => :created, :location => @modalidade }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @modalidade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /modalidades/1
  # PUT /modalidades/1.xml
  def update
    @modalidade = Modalidade.find(params[:id])

    respond_to do |format|
      if @modalidade.update_attributes(params[:modalidade])
        format.html { redirect_to(@modalidade, :notice => 'Modalidade was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @modalidade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /modalidades/1
  # DELETE /modalidades/1.xml
  def destroy
    @modalidade = Modalidade.find(params[:id])
    @modalidade.destroy

    respond_to do |format|
      format.html { redirect_to(modalidades_url) }
      format.xml  { head :ok }
    end
  end
end
