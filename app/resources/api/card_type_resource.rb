class Api::CardTypeResource < JSONAPI::Resource
  primary_key :code
  attributes :code, :name, :updated_at
  key_type :string
end
