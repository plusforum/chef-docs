# roles/webserver.rb

name "webserver"
description "web server"
run_list "recipe[my_recipe]", "recipe[apache]"
default_attribute ({
	"company" => "autofact"
})


# environment/developement.rb

name "developement"
description "for dev environment"
cookbook "my_cookbook", "= 0.2"

# environment/production.rb

name "production"
description "for production"
cookbook "apache" "= 0.1.1"