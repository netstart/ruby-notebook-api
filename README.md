$ rails new notebook-api --api

$ rails g scaffold Contact name:string email:string bithdate:date
```
      invoke  active_record
      create    db/migrate/20180320024538_create_contacts.rb
      create    app/models/contact.rb
      invoke    test_unit
      create      test/models/contact_test.rb
      create      test/fixtures/contacts.yml
      invoke  resource_route
       route    resources :contacts
      invoke  scaffold_controller
      create    app/controllers/contacts_controller.rb
      invoke    test_unit
      create      test/controllers/contacts_controller_test.rb

```

Como criar task dev?

rake é depecated, pode usar rails no lugar
$ rails db:migrate
$ rails s




Para fazer bind quando está em um vagrant

$ rails s -b 0.0.0.0  



Gem github.com/stympy/fake

localhost:3000/rails/info/routes


config/environments/development.rb
    config.file_watcher = ActiveSupport::FileUpdateChecker
    
rails console 

rails g migration add_kind_to_contact kind:references
rails g scaffold Kind description:string

rails db:drop db:create db:migrate dev:setup
rails db:setup no luga de db:drop e db:create