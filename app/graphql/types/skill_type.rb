# frozen_string_literal: true

module Types
  class SkillType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Integer, null: false
    field :name, String
    field :category, String
    field :rating, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
