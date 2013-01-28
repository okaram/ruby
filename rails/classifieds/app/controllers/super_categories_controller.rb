class SuperCategoriesController < ApplicationController
  # GET /super_categories
  # GET /super_categories.json
  def index
    @super_categories = SuperCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @super_categories }
    end
  end

  # GET /super_categories/1
  # GET /super_categories/1.json
  def show
    @super_category = SuperCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @super_category }
    end
  end

  # GET /super_categories/new
  # GET /super_categories/new.json
  def new
    @super_category = SuperCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @super_category }
    end
  end

  # GET /super_categories/1/edit
  def edit
    @super_category = SuperCategory.find(params[:id])
  end

  # POST /super_categories
  # POST /super_categories.json
  def create
    @super_category = SuperCategory.new(params[:super_category])

    respond_to do |format|
      if @super_category.save
        format.html { redirect_to @super_category, notice: 'Super category was successfully created.' }
        format.json { render json: @super_category, status: :created, location: @super_category }
      else
        format.html { render action: "new" }
        format.json { render json: @super_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /super_categories/1
  # PUT /super_categories/1.json
  def update
    @super_category = SuperCategory.find(params[:id])

    respond_to do |format|
      if @super_category.update_attributes(params[:super_category])
        format.html { redirect_to @super_category, notice: 'Super category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @super_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /super_categories/1
  # DELETE /super_categories/1.json
  def destroy
    @super_category = SuperCategory.find(params[:id])
    @super_category.destroy

    respond_to do |format|
      format.html { redirect_to super_categories_url }
      format.json { head :no_content }
    end
  end
end
