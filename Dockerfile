FROM python:3
WORKDIR /app
COPY tofahrenheit.py /app
COPY myscripy.sh /app
CMD ["python", "tofahrenheit.py"]
RUN chmod +x /app/myscripy.sh
ENTRYPOINT ["/app/myscripy.sh"]
