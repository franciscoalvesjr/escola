class RedesController < ApplicationController
  # GET /redes
  # GET /redes.xml
  def index
    @redes = Rede.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @redes }
    end
  end

  # GET /redes/1
  # GET /redes/1.xml
  def show
    @rede = Rede.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @rede }
    end
  end

  # GET /redes/new
  # GET /redes/new.xml
  def new
    @rede = Rede.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @rede }
    end
  end

  # GET /redes/1/edit
  def edit
    @rede = Rede.find(params[:id])
  end

  # POST /redes
  # POST /redes.xml
  def create
    @rede = Rede.new(params[:rede])

    respond_to do |format|
      if @rede.save
        format.html { redirect_to(@rede, :notice => 'Rede was successfully created.') }
        format.xml  { render :xml => @rede, :status => :created, :location => @rede }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @rede.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /redes/1
  # PUT /redes/1.xml
  def update
    @rede = Rede.find(params[:id])

    respond_to do |format|
      if @rede.update_attributes(params[:rede])
        format.html { redirect_to(@rede, :notice => 'Rede was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @rede.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /redes/1
  # DELETE /redes/1.xml
  def destroy
    @rede = Rede.find(params[:id])
    @rede.destroy

    respond_to do |format|
      format.html { redirect_to(redes_url) }
      format.xml  { head :ok }
    end
  end
end
