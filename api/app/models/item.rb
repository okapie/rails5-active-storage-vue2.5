class Item < ApplicationRecord
  # We define file size options used during a file uploading.
  has_attached_file :picture, styles: { large: "640x480>", medium: "300x300>", thumb: "100x100>" }
  # We define validations used during a file uploading.
  validates_attachment :picture, presence: true, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  do_not_validate_attachment_file_type :picture
end
