namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    puts "Executando rails db:setup db:migrate"

    %x(rails db:setup db:migrate)

        puts "Cadastrando os tipos de contato..."
    kinds = %w(Amigo Comercial Conhecido)
    kinds.each do |kind|
      Kind.create!(
          description: kind
      )
    end
    puts "Tipos de Contatos cadastrados com sucesso!"


    puts "Cadastrando os contatos."
    100.times do |i|
      Contact.create!(
          name: Faker::Name.name,
          email: Faker::Internet.email,
          bithdate: Faker::Date.between(65.year.ago, 18.years.ago),
          kind: Kind.all.sample
      )
    end
    puts "Contatos cadastrados com sucesso!"

    puts "Cadastrando os telefones..."
    Contact.all.each do |contact|
      5.times do |i|
        phone = Phone.create!(number: Faker::PhoneNumber.cell_phone, contact: contact)
        contact.phones << phone
        contact.save!
      end
    end
    puts "Telefones cadastrados com sucesso!"


    puts "Cadastrando os endereços..."
    Contact.all.each do |contact|
      Address.create!(
          street: Faker::Address::street_address,
          city: Faker::Address::city,
          contact: contact
      )
    end
    puts "Endereços cadastrados com sucesso!"

  end

end
