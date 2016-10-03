class BucketItemsController < ApplicationController
    before_action :set_bucket_list
    before_action :set_bucket_item, except: [:create]

    def create
        @bucket_item = @bucket_list.bucket_items.create(bucket_item_params)

        redirect_to @bucket_list
    end

    def destroy
        @bucket_item = @bucket_list.bucket_items.find(params[:id])
        if @bucket_item.destroy
            flash[:success] = "Bucket List item was deleted, good luck replacing that one with something better"
        else
            flash[:error] = "Bucket List couldn' t be deleted due to an error."
        end
        redirect_to @bucket_list
    end


    def complete
        @bucket_item.update_attribute(:completed_at, Time.now)
        redirect_to @bucket_list, notice: "Bucket List Item Accomplished"
    end




    private

    def set_bucket_list
        @bucket_list = BucketList.find(params[:bucket_list_id])
    end

    def set_bucket_item
        @bucket_item = @bucket_list.bucket_items.find(params[:id])
    end

    def bucket_item_params
        params[:bucket_item].permit(:content)
    end


end
