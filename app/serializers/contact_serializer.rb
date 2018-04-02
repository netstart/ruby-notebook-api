class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :bithdate

  def attributes(*args)
    h = super(*args)

    h[:bithdate] = object.bithdate.to_time.iso8601 unless object.bithdate.blank?
    h
  end
end

