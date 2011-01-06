class EsferasController < ApplicationController
  # GET /esferas
  # GET /esferas.xml
  def index
    @esferas = Esfera.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @esferas }
    end
  end

  # GET /esferas/1
  # GET /esferas/1.xml
  def show
    @esfera = Esfera.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @esfera }
    end
  end

  # GET /esferas/new
  # GET /esferas/new.xml
  def new
    @esfera = Esfera.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @esfera }
    end
  end

  # GET /esferas/1/edit
  def edit
    @esfera = Esfera.find(params[:id])
  end

  # POST /esferas
  # POST /esferas.xml
  def create
    @esfera = Esfera.new(params[:esfera])

    respond_to do |format|
      if @esfera.save
        format.html { redirect_to(@esfera, :notice => 'Esfera was successfully created.') }
        format.xml  { render :xml => @esfera, :status => :created, :location => @esfera }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @esfera.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /esferas/1
  # PUT /esferas/1.xml
  def update
    @esfera = Esfera.find(params[:id])

    respond_to do |format|
      if @esfera.update_attributes(params[:esfera])
        format.html { redirect_to(@esfera, :notice => 'Esfera was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @esfera.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /esferas/1
  # DELETE /esferas/1.xml
  def destroy
    @esfera = Esfera.find(params[:id])
    @esfera.destroy

    respond_to do |format|
      format.html { redirect_to(esferas_url) }
      format.xml  { head :ok }
    end
  end
end
