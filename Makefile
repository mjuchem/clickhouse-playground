download:
	cd ./data && wget https://s3.amazonaws.com/menusdata.nypl.org/gzips/2021_08_01_07_01_17_data.tgz
	cd ./data && tar xvf 2021_08_01_07_01_17_data.tgz

run:
	docker run -d -p 0.0.0.0:8080:8080 --name clickhouse-server clickhouse/clickhouse-server

upload:
	docker cp ./data/Menu.csv clickhouse-server:/Menu.csv
	docker cp ./data/MenuItem.csv clickhouse-server:/MenuItem.csv
	docker cp ./data/MenuPage.csv clickhouse-server:/MenuPage.csv
	docker cp ./data/Dish.csv clickhouse-server:/Dish.csv

client:
	docker exec -it clickhouse-server clickhouse-client

shell:
	docker exec -it clickhouse-server sh

stop:
	docker stop clickhouse-server

clean:
	docker rm clickhouse-server && docker rmi clickhouse/clickhouse-server:latest && docker rmi clickhouse/clickhouse-server:latest
	rm -rf ./data/*.tgz ./data/*.csv
