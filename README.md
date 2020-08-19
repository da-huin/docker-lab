# Docker Lab

<p align="center"> 
    <br> This docker is a research jupyterlab that can be used in various way such as Spark, Machine Learning and Deep Learning.
</p>

## 🏁 How to Use?

1. **pull docker.**

    ```bash
    docker pull dahuin000/lab
    ```

1. **run docker.**

    ```bash
    docker run -v `YOUR_CONFIG_DIRECTORY`/jupyter_notebook_config.py:/root/.jupyter/jupyter_notebook_config.py -d -v $pwd/workspace:/workspace -p 8888:8888 -it --rm --name lab dahuin000/lab
    ```

1. **get token.**

    ```bash
    docker logs -f lab
    ```


1. **Refer to the below `URL` for details.**

    https://hub.docker.com/r/dahuin000/lab

