/home/jrenau-v/data/%:
	#@mkdir -p /home/jrenau-v/data/webpage
	#@mkdir -p /home/jrenau-v/data/database
	#@chmod 777 /home/jrenau-v/data/webpage
	#@chmod 777 /home/jrenau-v/data/database
	mkdir -p $@
	chmod 777 $@
upp: /home/jrenau-v/data/webpage /home/jrenau-v/data/database
	docker compose -f ./srcs/compose.yaml up
bld:
	docker compose -f ./srcs/compose.yaml build
dwn:
	docker compose -f ./srcs/compose.yaml down
fdwn: dwn
	docker compose -f ./srcs/compose.yaml down --volumes
	rm -rf /home/jrenau-v/data/webpage
	rm -rf /home/jrenau-v/data/database

re: fdwn bld upp

clean: dwn
	@docker compose prune -a
fclean: fdwn clean

.PHONY: all upp bld dwn fdwn clean fclean
