FROM ubuntu:16.04
RUN apt-get update -y && \
	apt-get install -y python-pip && \
	pip install flask && \
	rm -rf /var/lib/apt/lists/*
ENV FLASK_APP=inv.py
COPY . /app
WORKDIR /app
ENTRYPOINT ["python"]
CMD ["-m", "flask", "run", "-h", "0.0.0.0", "-p", "8080"]
EXPOSE 8080
