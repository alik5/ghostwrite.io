class Post < ActiveRecord::Base
attr_accessible :photo
has_attached_file :photo,
:styles => { :medium => "300x300>"},
:storage => :s3,
:s3_credentials=>{:access_key_id=>"AWS_ACCESS_KEY_ID",
:secret_access_key => "AWS_SECRET_ACCESS_KEY"},
:s3_permissions => "public-read",
:path => ":id",
:bucket => "AWS_BUCKET"
end