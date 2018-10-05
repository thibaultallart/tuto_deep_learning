## 1) Install docker 
https://docs.docker.com/install/

## 2) Clone this repo
```bash
git clone https://github.com/thibaultallart/tuto_deep_learning.git
```

## 3) Create container and start coding
```bash
bash rebuild_docker.sh
docker exec -it tuto_fully_connected bash
jupyter notebook --ip=0.0.0.0 --no-browser --allow-root
```




## Some notes:
- For cat vs dog you have to download the data from kaggle. https://www.kaggle.com/c/dogs-vs-cats/data
You can put them into our shared_folder. It's a shared volume between your host and your container.
- On RL tuto, you can not display inside docker, so set display_policy=False
