# Envoy #31673 Demo

Demo for [Envoy #31673](https://github.com/envoyproxy/envoy/issues/31673).

## Dependencies

- [Docker](https://docs.docker.com/engine/install/)
- [Vegeta](https://github.com/tsenart/vegeta?tab=readme-ov-file#install)

## Usage

1. Start the demo:

    ```bash
    docker compose up -d
    ```

2. On another terminal, run the following command to display the current memory usage of the envoy container:

    ```bash
    docker stats envoy
    ```

3. Run the stress test:

    ```bash
    ./stress.sh
    ```

4. Observe the memory usage of the envoy container.

5. Stop the demo:

    ```bash
    docker compose down
    ```

You should see the memory usage of the envoy container increase during the stress test and never decrease after the stress test is stopped.
