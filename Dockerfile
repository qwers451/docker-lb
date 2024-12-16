FROM python:3.10-alpine

WORKDIR /app

COPY app/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY app/ ./

# Создаем пользователя
RUN addgroup -S flaskgroup && adduser -S flaskuser -G flaskgroup
USER flaskuser

# Открываем порт
EXPOSE 5000

# Запускаем приложение
CMD ["flask", "run", "--host=0.0.0.0"]
