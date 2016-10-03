class BucketListsController < ApplicationController
  before_action :set_bucket_list, only: [:show, :edit, :update, :destroy]

  
  def index
    @bucket_lists = BucketList.all
  end

 
  def show
  end

  def new
    @bucket_list = BucketList.new
  end

  def edit
  end

  def create
    @bucket_list = BucketList.new(bucket_list_params)

    respond_to do |format|
      if @bucket_list.save
        format.html { redirect_to @bucket_list, notice: 'Bucket list was successfully created.' }
        format.json { render :show, status: :created, location: @bucket_list }
      else
        format.html { render :new }
        format.json { render json: @bucket_list.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @bucket_list.update(bucket_list_params)
        format.html { redirect_to @bucket_list, notice: 'Bucket list was successfully updated.' }
        format.json { render :show, status: :ok, location: @bucket_list }
      else
        format.html { render :edit }
        format.json { render json: @bucket_list.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @bucket_list.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Bucket list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_bucket_list
      @bucket_list = BucketList.find(params[:id])
    end

    def bucket_list_params
      params.require(:bucket_list).permit(:title, :description)
    end
end
