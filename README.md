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