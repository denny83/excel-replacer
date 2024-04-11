# Используем официальный образ Python в качестве базового
FROM python:3.8-slim-buster

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы текущего каталога в рабочую директорию в Docker
COPY . /app

# Устанавливаем необходимые зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Экспортируем порт, который будет использоваться Flask
EXPOSE 5000

# Запускаем Flask приложение
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]


