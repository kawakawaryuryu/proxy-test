.PHONY: client origin haproxy squid

up:
	make client-up
	make origin-up
	make haproxy-up
	make squid-up
ps:
	make client-ps
	make origin-ps
	make haproxy-ps
	make squid-ps
down:
	make client-down
	make origin-down
	make haproxy-down
	make squid-down

client-up:
	docker-compose -f client/docker-compose.yml up -d
client-ps:
	docker-compose -f client/docker-compose.yml ps
client-exec:
	docker-compose -f client/docker-compose.yml exec client bash
client-down:
	docker-compose -f client/docker-compose.yml down

origin-up:
	docker-compose -f origin/docker-compose.yml up -d
origin-ps:
	docker-compose -f origin/docker-compose.yml ps
origin-exec:
	docker-compose -f origin/docker-compose.yml exec origin bash
origin-down:
	docker-compose -f origin/docker-compose.yml down

haproxy-up:
	docker-compose -f haproxy/docker-compose.yml up -d
haproxy-ps:
	docker-compose -f haproxy/docker-compose.yml ps
haproxy-exec:
	docker-compose -f haproxy/docker-compose.yml exec haproxy bash
haproxy-down:
	docker-compose -f haproxy/docker-compose.yml down

squid-up:
	docker-compose -f squid/docker-compose.yml up -d
squid-ps:
	docker-compose -f squid/docker-compose.yml ps
squid-exec:
	docker-compose -f squid/docker-compose.yml exec squid bash
squid-down:
	docker-compose -f squid/docker-compose.yml down
