module API
  module V3
    module Public
      class Api::V3::Public::CardCycleResource < JSONAPI::Resource
        immutable

        attributes :name, :date_release, :legacy_code, :card_set_ids, :updated_at
        key_type :string

        has_many :card_sets
        has_many :cards, relation_name: :unified_cards
        has_many :printings, relation_name: :unified_printings

        paginator :none
      end
    end
  end
end
