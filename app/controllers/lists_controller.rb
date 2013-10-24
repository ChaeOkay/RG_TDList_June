class ListsController < ApplicationController
  before_action only: [:show, :edit, :update, :destroy]

  # GET /lists
  def index
    @lists = List.all

    respond_to do |format|
      format.html  # index.html.erb
      format.json  { render :json => @lists }
    end
  end

  # GET /lists/1
  def show
    @list = List.find(params[:id])
    @tasks = @list.tasks
  end

  # GET /lists/new
  def new
    @list = List.new
  end

  # GET /lists/1/edit
  def edit
    @list = List.find(params[:id])
    @tasks = @list.tasks
  end

  # POST /lists
  def create
    @list = List.new(params[:list])

    if @list.save
      redirect_to @list, notice: 'List was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /lists/1
  def update
    @list = List.find(params[:id])
    if @list.update(params[:list])
      redirect_to @list, notice: 'List was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /lists/1
  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to root_url, notice: 'List was successfully destroyed.'
  end

end
