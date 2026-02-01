# Базовый образ Python
FROM python:3.9-slim

# Рабочая директория внутри образа
WORKDIR /app

# Копируем файл зависимостей и устанавливаем нужные модули
COPY requirements.txt ./
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Копируем весь исходный код внутрь контейнера
COPY . .

EXPOSE 8080
CMD ["python", "bot.py"]
