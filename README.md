## Описание

Это легковесное веб-приложение, разработанное на Python с использованием Flask и PostgreSQL в качестве базы данных. Приложение организовано с использованием Docker и Docker Compose.


-Рабочее приложение: Flask с использованием SQLAlchemy для работы с PostgreSQL.

-Легковесные образы: Используется python:3.11-alpine и postgres:alpine.

-Конфигурация через переменные окружения: Используется переменная DATABASE_URL.

-Статика во внешнем томе: База данных хранится в db_data.

-Автоматические миграции: Создание таблиц происходит при старте приложения.

-Непривилегованный пользователь: Приложение запускается от пользователя appuser.

-Очистка кеша: Используется параметр --no-cache-dir при установке зависимостей.


## Структура проекта

```
my_flask_app/
│
├── app/
│   ├── __init__.py
│   ├── models.py
│   ├── routes.py
│   └── requirements.txt
│
├── Dockerfile
├── docker-compose.yml
└── .env
```

## Описание файлов

- **requirements.txt**: Список необходимых библиотек для работы приложения, включая Flask и Flask-SQLAlchemy.
- **app/__init__.py**: Основной файл приложения, создающий экземпляр Flask и настраивающий подключение к базе данных.
- **app/models.py**: Определяет модель базы данных `User`.
- **app/routes.py**: Содержит маршруты приложения.
- **Dockerfile**: Описывает процесс сборки Docker-образа и настройки приложения.
- **docker-compose.yml**: Определяет сервисы приложения и базы данных.

# Процесс запуска приложения


   Выполните следующую команду для сборки и запуска приложения:

   ```bash
   docker-compose up --build
   ```

   Эта команда создает необходимые Docker-образы и запускает контейнеры для Flask приложения и базы данных PostgreSQL.

 **Проверка состояния контейнеров**:

   Для проверки выполнена следующая команда:

   ```bash
   docker ps
   ```

   Эта команда покажет список всех контейнеров. Результат:

   ```plaintext
   PS C:\Users\qwers> docker ps   
    CONTAINER ID   IMAGE             COMMAND                  CREATED          STATUS         PORTS      NAMES
    3a493919223c   postgres:alpine   "docker-entrypoint.s…"   12 minutes ago   Up 7 seconds   5432/tcp   pythonproject-db-1
   ```

   В этом примере видно, что контейнер `pythonproject-db` работает.
