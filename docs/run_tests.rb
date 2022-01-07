require 'html-proofer'

options = { :empty_alt_ignore => true, 
  :disable_external => true, 
  :allow_hash_href => true,
  :assume_extension => true,
  :url_swap => {/\/developers\// => "/"},
  :file_ignore => [],
}

HTMLProofer.check_directory("./_site", options).run