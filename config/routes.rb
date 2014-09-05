Rails.application.routes.draw do
  match('species', {:via => :get, :to => 'species#index'})
  match('species', {:via => :post, :to => 'species#create'})
  # match('species', {:via => :get, :to => 'species#new'})
  match('species/:id/edit', {:via => :get, :to => 'species#edit'})
  match('species/:id', {:via => :get, :to => 'species#show'})
  match('species/:id', {:via => [:patch, :put], :to => 'species#update'})
  match('species/:id', {:via => :delete, :to => 'species#destroy'})
  match('sightings', {:via => :post, :to => 'sightings#create'})
  match('sightings', {:via => :get, :to => 'sightings#index'})
  match('sightings/:id/edit', {:via => :get, :to => 'sightings#edit'})
  match('sightings/:id', {:via => [:patch, :put], :to => 'sightings#update'})
  match('sightings/:id', {:via => :delete, :to => 'sightings#destroy'})
end
