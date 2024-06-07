class Comment < ApplicationRecord
    include CreationTime
    belongs_to :article
    belongs_to :user
end
