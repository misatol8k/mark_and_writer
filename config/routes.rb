Rails.application.routes.draw do
  devise_for :users
  root 'tops#index'
  resources :works do
    resources :impressions
    resources :reactions
  end
  resources :users, only: [:show, :index]
  resources :relationships, only: [:create, :destroy]
  resources :favorites, only: [:create, :destroy]
  resources :stickers, only: [:index, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#          new_user_session GET    /users/sign_in(.:format)                                                                 devise/sessions#new
#              user_session POST   /users/sign_in(.:format)                                                                 devise/sessions#create
#      destroy_user_session DELETE /users/sign_out(.:format)                                                                devise/sessions#destroy
#         new_user_password GET    /users/password/new(.:format)                                                            devise/passwords#new
#        edit_user_password GET    /users/password/edit(.:format)                                                           devise/passwords#edit
#             user_password PATCH  /users/password(.:format)                                                                devise/passwords#update
#                           PUT    /users/password(.:format)                                                                devise/passwords#update
#                           POST   /users/password(.:format)                                                                devise/passwords#create
#  cancel_user_registration GET    /users/cancel(.:format)                                                                  devise/registrations#cancel
#     new_user_registration GET    /users/sign_up(.:format)                                                                 devise/registrations#new
#    edit_user_registration GET    /users/edit(.:format)                                                                    devise/registrations#edit
#         user_registration PATCH  /users(.:format)                                                                         devise/registrations#update
#                           PUT    /users(.:format)                                                                         devise/registrations#update
#                           DELETE /users(.:format)                                                                         devise/registrations#destroy
#                           POST   /users(.:format)                                                                         devise/registrations#create
#                      root GET    /                                                                                        tops#index
#          work_impressions GET    /works/:work_id/impressions(.:format)                                                    impressions#index
#                           POST   /works/:work_id/impressions(.:format)                                                    impressions#create
#       new_work_impression GET    /works/:work_id/impressions/new(.:format)                                                impressions#new
#      edit_work_impression GET    /works/:work_id/impressions/:id/edit(.:format)                                           impressions#edit
#           work_impression GET    /works/:work_id/impressions/:id(.:format)                                                impressions#show
#                           PATCH  /works/:work_id/impressions/:id(.:format)                                                impressions#update
#                           PUT    /works/:work_id/impressions/:id(.:format)                                                impressions#update
#                           DELETE /works/:work_id/impressions/:id(.:format)                                                impressions#destroy
#            work_reactions GET    /works/:work_id/reactions(.:format)                                                      reactions#index
#                           POST   /works/:work_id/reactions(.:format)                                                      reactions#create
#         new_work_reaction GET    /works/:work_id/reactions/new(.:format)                                                  reactions#new
#        edit_work_reaction GET    /works/:work_id/reactions/:id/edit(.:format)                                             reactions#edit
#             work_reaction GET    /works/:work_id/reactions/:id(.:format)                                                  reactions#show
#                           PATCH  /works/:work_id/reactions/:id(.:format)                                                  reactions#update
#                           PUT    /works/:work_id/reactions/:id(.:format)                                                  reactions#update
#                           DELETE /works/:work_id/reactions/:id(.:format)                                                  reactions#destroy
#                     works GET    /works(.:format)                                                                         works#index
#                           POST   /works(.:format)                                                                         works#create
#                  new_work GET    /works/new(.:format)                                                                     works#new
#                 edit_work GET    /works/:id/edit(.:format)                                                                works#edit
#                      work GET    /works/:id(.:format)                                                                     works#show
#                           PATCH  /works/:id(.:format)                                                                     works#update
#                           PUT    /works/:id(.:format)                                                                     works#update
#                           DELETE /works/:id(.:format)                                                                     works#destroy
#                     users GET    /users(.:format)                                                                         users#index
#                      user GET    /users/:id(.:format)                                                                     users#show
#             relationships POST   /relationships(.:format)                                                                 relationships#create
#              relationship DELETE /relationships/:id(.:format)                                                             relationships#destroy
#                 favorites POST   /favorites(.:format)                                                                     favorites#create
#                  favorite DELETE /favorites/:id(.:format)                                                                 favorites#destroy
#                  stickers GET    /stickers(.:format)                                                                      stickers#index
#                           POST   /stickers(.:format)                                                                      stickers#create
#                   sticker DELETE /stickers/:id(.:format)                                                                  stickers#destroy
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
