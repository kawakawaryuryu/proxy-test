.PHONY: client origin haproxy squid

up:
	make client-up
	make origin-up
	make haproxy-up
	make squid-up
	make envoy-up
	make nginx-up
ps:
	make client-ps
	make origin-ps
	make haproxy-ps
	make squid-ps
	make envoy-ps
	make nginx-ps
down:
	make haproxy-down
	make squid-down
	make envoy-down
	make nginx-down
	make client-down
	make origin-down
logs:
	make client-logs
	make origin-logs
	make haproxy-logs
	make squid-logs
	make envoy-logs
	make nginx-logs

client-up:
	docker-compose -f client/docker-compose.yml up -d --build
client-ps:
	docker-compose -f client/docker-compose.yml ps
client-exec:
	docker-compose -f client/docker-compose.yml exec client bash
client-down:
	docker-compose -f client/docker-compose.yml down
client-logs:
	docker-compose -f client/docker-compose.yml logs -f

origin-up:
	docker-compose -f origin/docker-compose.yml up -d --build
origin-ps:
	docker-compose -f origin/docker-compose.yml ps
origin-exec:
	docker-compose -f origin/docker-compose.yml exec origin bash
origin-down:
	docker-compose -f origin/docker-compose.yml down
origin-logs:
	docker-compose -f origin/docker-compose.yml logs -f

haproxy-up:
	docker-compose -f haproxy/docker-compose.yml up -d --build
haproxy-ps:
	docker-compose -f haproxy/docker-compose.yml ps
haproxy-exec:
	docker-compose -f haproxy/docker-compose.yml exec haproxy bash
haproxy-down:
	docker-compose -f haproxy/docker-compose.yml down
haproxy-logs:
	docker-compose -f haproxy/docker-compose.yml logs -f

squid-up:
	docker-compose -f squid/docker-compose.yml up -d --build
squid-ps:
	docker-compose -f squid/docker-compose.yml ps
squid-exec:
	docker-compose -f squid/docker-compose.yml exec squid bash
squid-down:
	docker-compose -f squid/docker-compose.yml down
squid-logs:
	docker-compose -f squid/docker-compose.yml logs -f

envoy-up:
	docker-compose -f envoy/docker-compose.yml up -d --build
envoy-ps:
	docker-compose -f envoy/docker-compose.yml ps
envoy-exec:
	docker-compose -f envoy/docker-compose.yml exec envoy bash
envoy-down:
	docker-compose -f envoy/docker-compose.yml down
envoy-logs:
	docker-compose -f envoy/docker-compose.yml logs -f

nginx-up:
	docker-compose -f nginx/docker-compose.yml up -d --build
nginx-ps:
	docker-compose -f nginx/docker-compose.yml ps
nginx-exec:
	docker-compose -f nginx/docker-compose.yml exec nginx bash
nginx-down:
	docker-compose -f nginx/docker-compose.yml down
nginx-logs:
	docker-compose -f nginx/docker-compose.yml logs -f
