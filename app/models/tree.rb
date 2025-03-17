class Tree < ApplicationRecord
  belongs_to :user

  extend FriendlyId
  friendly_id :name, use: :slugged

  # Validações
  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 100 }
  validates :instagram, :youtube, :x, allow_blank: true, format: { with: URI::DEFAULT_PARSER.make_regexp, message: "deve ser uma URL válida" }
  validates :style, presence: true, inclusion: { in: %w[default modern minimalistic classic], message: "não é um estilo válido" }
end