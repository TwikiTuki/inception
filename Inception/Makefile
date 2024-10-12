/home/jrenau-v/data/%:
	mkdir -p $@
	chmod 777 $@
upp: /home/jrenau-v/data/webpage /home/jrenau-v/data/database
	docker compose -f ./srcs/compose.yaml up || true
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
	docker system prune -a
fclean: fdwn clean

.PHONY: all upp bld dwn fdwn clean fclean
