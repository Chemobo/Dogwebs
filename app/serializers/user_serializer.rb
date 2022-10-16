class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :firstname, :lastname, :email, :password_digest
  has_many :dogs
end
