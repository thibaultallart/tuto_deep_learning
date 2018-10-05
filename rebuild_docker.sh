docker stop tuto_deep_learning
docker rm tuto_deep_learning
docker build -t tuto_deep_learning .
port=4455
docker run -dit -v $(pwd)/shared_folder:/shared_folder -p ${port}:8888 --name tuto_deep_learning tuto_deep_learning