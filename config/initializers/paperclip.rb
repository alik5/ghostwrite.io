Paperclip::Attachment.default_options[:url] = ':s3_ghostwrite.io.s3.amazonaws.com'
Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'
Paperclip::Attachment.default_options[:s3_host_name] = 's3-us.amazonaws.com'