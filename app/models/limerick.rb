# == Schema Information
#
# Table name: limericks
#
#  id            :bigint           not null, primary key
#  limerick_text :text
#  title         :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  author_id     :bigint           not null
#
# Indexes
#
#  index_limericks_on_author_id  (author_id)
#
# Foreign Keys
#
#  fk_rails_...  (author_id => users.id)
#
class Limerick < ApplicationRecord

  belongs_to(
    :author,
    class_name: 'User',
    foreign_key: 'author_id',
    inverse_of: :limericks
  )

end
