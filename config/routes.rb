Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "events#index"
  # Routes for the Result resource:

  # CREATE
  get("/results/new", { :controller => "results", :action => "new_form" })
  post("/create_result", { :controller => "results", :action => "create_row" })
  post("/create_result_from_race", { :controller => "results", :action => "create_row_from_race" })

  # READ
  get("/results", { :controller => "results", :action => "index" })
  get("/results/:id_to_display", { :controller => "results", :action => "show" })

  # UPDATE
  get("/results/:prefill_with_id/edit", { :controller => "results", :action => "edit_form" })
  post("/update_result/:id_to_modify", { :controller => "results", :action => "update_row" })

  # DELETE
  get("/delete_result/:id_to_remove", { :controller => "results", :action => "destroy_row" })
  get("/delete_result_from_race/:id_to_remove", { :controller => "results", :action => "destroy_row_from_race" })
  get("/delete_result_from_user/:id_to_remove", { :controller => "results", :action => "destroy_row_from_user" })

  #------------------------------

  # Routes for the Comment resource:

  # CREATE
  get("/comments/new", { :controller => "comments", :action => "new_form" })
  post("/create_comment", { :controller => "comments", :action => "create_row" })
  post("/create_comment_from_result", { :controller => "comments", :action => "create_row_from_result" })

  # READ
  get("/comments", { :controller => "comments", :action => "index" })
  get("/comments/:id_to_display", { :controller => "comments", :action => "show" })

  # UPDATE
  get("/comments/:prefill_with_id/edit", { :controller => "comments", :action => "edit_form" })
  post("/update_comment/:id_to_modify", { :controller => "comments", :action => "update_row" })

  # DELETE
  get("/delete_comment/:id_to_remove", { :controller => "comments", :action => "destroy_row" })
  get("/delete_comment_from_result/:id_to_remove", { :controller => "comments", :action => "destroy_row_from_result" })
  get("/delete_comment_from_commentor/:id_to_remove", { :controller => "comments", :action => "destroy_row_from_commentor" })

  #------------------------------

  # Routes for the Race resource:

  # CREATE
  get("/races/new", { :controller => "races", :action => "new_form" })
  post("/create_race", { :controller => "races", :action => "create_row" })
  post("/create_race_from_event", { :controller => "races", :action => "create_row_from_event" })

  # READ
  get("/races", { :controller => "races", :action => "index" })
  get("/races/:id_to_display", { :controller => "races", :action => "show" })

  # UPDATE
  get("/races/:prefill_with_id/edit", { :controller => "races", :action => "edit_form" })
  post("/update_race/:id_to_modify", { :controller => "races", :action => "update_row" })

  # DELETE
  get("/delete_race/:id_to_remove", { :controller => "races", :action => "destroy_row" })
  get("/delete_race_from_event/:id_to_remove", { :controller => "races", :action => "destroy_row_from_event" })

  #------------------------------

  # Routes for the Event resource:

  # CREATE
  get("/events/new", { :controller => "events", :action => "new_form" })
  post("/create_event", { :controller => "events", :action => "create_row" })

  # READ
  get("/events", { :controller => "events", :action => "index" })
  get("/events/:id_to_display", { :controller => "events", :action => "show" })

  # UPDATE
  get("/events/:prefill_with_id/edit", { :controller => "events", :action => "edit_form" })
  post("/update_event/:id_to_modify", { :controller => "events", :action => "update_row" })

  # DELETE
  get("/delete_event/:id_to_remove", { :controller => "events", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
