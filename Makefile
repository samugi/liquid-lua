development: ## Run bash inside the development image
	- docker-compose up -d 
	docker-compose exec -e COLUMNS="`tput cols`" -e LINES="`tput lines`" development bash

clean-containers:
	docker-compose down --volumes

clean: clean-containers
	- docker rmi liquid-lua_development --force
