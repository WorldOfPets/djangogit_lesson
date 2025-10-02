#!/bin/bash

echo "Установка зависимостей и запуск миграций..."

# Создаём виртуальное окружение, если его нет
if [ ! -d "venv" ]; then
    python3 -m venv venv
fi

# Активируем и устанавливаем зависимости
source venv/bin/activate
pip install -r req.txt

# Применяем миграции
python manage.py migrate

# Запускаем тесты
python manage.py test

echo "Готово!"