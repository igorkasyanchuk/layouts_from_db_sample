class SiteTemplatesController < ApplicationController
  # GET /site_templates
  # GET /site_templates.xml
  def index
    @site_templates = SiteTemplate.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @site_templates }
    end
  end

  # GET /site_templates/1
  # GET /site_templates/1.xml
  def show
    @site_template = SiteTemplate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @site_template }
    end
  end

  # GET /site_templates/new
  # GET /site_templates/new.xml
  def new
    @site_template = SiteTemplate.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @site_template }
    end
  end

  # GET /site_templates/1/edit
  def edit
    @site_template = SiteTemplate.find(params[:id])
  end

  # POST /site_templates
  # POST /site_templates.xml
  def create
    @site_template = SiteTemplate.new(params[:site_template])

    respond_to do |format|
      if @site_template.save
        flash[:notice] = 'SiteTemplate was successfully created.'
        format.html { redirect_to(@site_template) }
        format.xml  { render :xml => @site_template, :status => :created, :location => @site_template }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @site_template.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /site_templates/1
  # PUT /site_templates/1.xml
  def update
    @site_template = SiteTemplate.find(params[:id])

    respond_to do |format|
      if @site_template.update_attributes(params[:site_template])
        flash[:notice] = 'SiteTemplate was successfully updated.'
        format.html { redirect_to(@site_template) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @site_template.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /site_templates/1
  # DELETE /site_templates/1.xml
  def destroy
    @site_template = SiteTemplate.find(params[:id])
    @site_template.destroy

    respond_to do |format|
      format.html { redirect_to(site_templates_url) }
      format.xml  { head :ok }
    end
  end
end
