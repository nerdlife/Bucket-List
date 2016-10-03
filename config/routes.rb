Rails.application.routes.draw do

    resources :bucket_lists do
        resources :bucket_items do
            member do
                patch :complete
            end
        end
    end

    root :to => "bucket_lists#index"

end

