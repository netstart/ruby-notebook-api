$ rails new notebook-api --api

##### gera entidade, controller, banco, teste
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
  gem 'faker'

rails g task dev setup
rails -T # lista as tasks

rake é depecated, pode usar rails no lugar
$ rails db:migrate
$ rails s



#### Adiciona a controller, banco, entidade Kind e adiciona no contact uma referencia ao kind
rails g migration add_kind_to_contact kind:references
rails g scaffold Kind description:string

#### Adicionando model Phone
rails g model Phone number:string contact:references



Para fazer bind quando está em um vagrant

$ rails s -b 0.0.0.0  



Gem github.com/stympy/fake

localhost:3000/rails/info/routes


config/environments/development.rb
    config.file_watcher = ActiveSupport::FileUpdateChecker
    
rails console 


rails db:drop db:create db:migrate dev:setup
rails db:setup no luga de db:drop e db:create


nested atributes é o recurso que permite adicionar um contato já com os telefones, sendo que os telefones foi criado como um model e não como um scaffold


params = {contact: {name:"Jack", email: "jack@gmail.com", bithdate: "12/12/12", kind_id: 3}}
Contact.create(params[:contact])

params = {contact: {name:"1 Jack", email: "jack@gmail.com", bithdate: "12/12/12", kind_id: 3, phones_attributes: [{number: '1214323'}, {number:'21345'}]}}
Contact.create(params[:contact])


