class Contact < ApplicationRecord
  belongs_to :kind
  has_many :phones
  has_one :address

  accepts_nested_attributes_for :phones, allow_destroy: true #aceita também os telefones usando NestedAttributes
  accepts_nested_attributes_for :address #,update_only: true faz com que atualize (patch), que não possa se inserido um novo

  def as_json(options = {})
    super(include: [:kind, :phones, :address]);
  end


  # def to_br
  #   {
  #       name: self.name,
  #       birthdate: (I18n.l(self.bithdate) unless self.bithdate.blank?)
  #   }
  # end
  #
  # def as_json(options = {})
  #   super(methods: [:to_br], root: false)
  # end
  #########################33
  #
  #belongs_to :kind, optional: true


  # def author
  #   "Clayton K. N. Passos"
  # end
  #
  # def kind_description
  #   self.kind.description
  # end
  #
  # def as_json(options = {})
  #   super(
  #       methods: [:author, :kind_description],
  #       root: true,
  #       # include: :kind # traz tudo
  #       include: {kind: {only: :description}}
  #   )
  # end

end
