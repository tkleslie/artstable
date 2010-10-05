class BoxOfficesController < ApplicationController
  # GET /box_offices
  # GET /box_offices.xml
  def index
    @box_offices = BoxOffice.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @box_offices }
    end
  end

  # GET /box_offices/1
  # GET /box_offices/1.xml
  def show
    @box_office = BoxOffice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @box_office }
    end
  end

  # GET /box_offices/new
  # GET /box_offices/new.xml
  def new
    @box_office = BoxOffice.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @box_office }
    end
  end

  # GET /box_offices/1/edit
  def edit
    @box_office = BoxOffice.find(params[:id])
  end

  # POST /box_offices
  # POST /box_offices.xml
  def create
    @box_office = BoxOffice.new(params[:box_office])

    respond_to do |format|
      if @box_office.save
        format.html { redirect_to(@box_office, :notice => 'Box office was successfully created.') }
        format.xml  { render :xml => @box_office, :status => :created, :location => @box_office }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @box_office.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /box_offices/1
  # PUT /box_offices/1.xml
  def update
    @box_office = BoxOffice.find(params[:id])

    respond_to do |format|
      if @box_office.update_attributes(params[:box_office])
        format.html { redirect_to(@box_office, :notice => 'Box office was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @box_office.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /box_offices/1
  # DELETE /box_offices/1.xml
  def destroy
    @box_office = BoxOffice.find(params[:id])
    @box_office.destroy

    respond_to do |format|
      format.html { redirect_to(box_offices_url) }
      format.xml  { head :ok }
    end
  end
end
