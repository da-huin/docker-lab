<p align="center">
  <a href="" rel="noopener">
 <img width=200px height=200px src="./static/icon.png" alt="Project logo" ></a>
 <br>

 
</p>

<h3 align="center">Docker Lab</h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()
[![GitHub Issues](https://img.shields.io/github/issues/da-huin/docker-lab.svg)](https://github.com/da-huin/docker-lab/issues)
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/da-huin/docker-lab.svg)](https://github.com/da-huin/docker-lab/pulls)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

</div>

---

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
