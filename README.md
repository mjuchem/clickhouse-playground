# clickhouse-playground

## Makefile

    $ make download  # Download dataset.

    $ make run  # Run clickhouse-server container.

    $ make upload  # Copy CSVs into container.

    $ make client  # Run clickhouse client within the container.

    $ make shell  # Run shell within the container.

    $ make stop  # Stop clickhouse-server container.

    $ make clean  # Remove container, image, and datasets.

# SQL files

    sql/create_tables.sql  # Create tables and insert data from CSVs within the container.

    sql/selects.sql  # Exploratory queries.

    sql/drop_tables.sql  # Drop all tables.

Source: https://clickhouse.com/docs/getting-started/example-datasets/menus