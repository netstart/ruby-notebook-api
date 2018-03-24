class Contact < ApplicationRecord
  belongs_to :kind


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
