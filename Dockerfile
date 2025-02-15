FROM nikolaik/python-nodejs:python3.10-nodejs17
RUN apt update && apt upgrade -y
RUN apt install ffmpeg -y
COPY . /app
WORKDIR /app
RUN pip3 install -U pip
RUN pip3 install -U -r requirements.txt
CMD ["python3", "main.py"]
