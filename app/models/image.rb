class Image < ApplicationRecord
 belongs_to :imageable, polymorphic: true
 mount_uploader :img_name, AvatarUploader

end