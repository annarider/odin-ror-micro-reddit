class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validate :link_or_body_present
  validates :link, format: { with: URI::DEFAULT_PARSER.make_regexp(%w[http https]),
                             message: "must be valid URL" },
                   allow_blank: true

  private

  def link_or_body_present
    if link.blank? && body.blank?
      errors.add(:base, "Post must have either a valid link or body text")
    end
  end
end
