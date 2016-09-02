Rails.application.routes.draw do

  resources :boards, shallow: true do
    resources :lists do
      resources :cards do
        resources :comments, :checklists
      end
    end
  end

end
