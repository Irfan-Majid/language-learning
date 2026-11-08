# RabbitMQ - Python (pip install pika)
import pika
connection = pika.BlockingConnection(pika.ConnectionParameters("localhost"))
channel = connection.channel()
channel.queue_declare(queue="tasks")
channel.basic_publish(exchange="", routing_key="tasks", body="Hello RabbitMQ!")
connection.close()

# Kafka - Python (pip install kafka-python)
from kafka import KafkaProducer, KafkaConsumer
producer = KafkaProducer(bootstrap_servers="localhost:9092")
producer.send("events", b"user_signed_up")
producer.flush()
