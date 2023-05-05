![docker_api_yamdb](https://user-images.githubusercontent.com/112638163/236439694-5e58b747-6413-42b4-86b9-760e26417b0a.png)

### Описание
Проект YaMDb собирает отзывы пользователей на произведения. Сами произведения в YaMDb не хранятся, здесь нельзя посмотреть фильм или послушать музыку.
Произведения делятся на категории, такие как «Книги», «Фильмы», «Музыка». Например, в категории «Книги» могут быть произведения «Винни-Пух и все-все-все» и «Марсианские хроники», а в категории «Музыка» — песня «Давеча» группы «Жуки» и вторая сюита Баха. Список категорий может быть расширен (например, можно добавить категорию «Изобразительное искусство» или «Ювелирка»). 
Произведению может быть присвоен жанр из списка предустановленных (например, «Сказка», «Рок» или «Артхаус»). 
Добавлять произведения, категории и жанры может только администратор.
Благодарные или возмущённые пользователи оставляют к произведениям текстовые отзывы и ставят произведению оценку в диапазоне от одного до десяти (целое число); из пользовательских оценок формируется усреднённая оценка произведения — рейтинг (целое число). На одно произведение пользователь может оставить только один отзыв.
Пользователи могут оставлять комментарии к отзывам.
Добавлять отзывы, комментарии и ставить оценки могут только аутентифицированные пользователи.

### Технологии
![python version](https://img.shields.io/badge/Python-3.9.10-green?logo=python)
![django version](https://img.shields.io/badge/Django-3.2-green?logo=django)
![djangorestframework version](https://img.shields.io/badge/djangorestframework-3.12.4-green?logo=django)
![Symple JWT verson](https://img.shields.io/badge/Simple%20JWT-%202.1.0-green?logo=django)
![Django filter](https://img.shields.io/badge/Django%20filter-%2022.1-green?logo=django)
![Docker version](https://img.shields.io/badge/Docker-23.0.5-green?logo=docker)

### Шаблон для заполнения env:

``` 
    TOKEN = 'p&l%385148kslhtyn^##a1)ilz@4zqj=rq&agdol^##zgl9(vs'
    DB_ENGINE=django.db.backends.postgresql
    DB_NAME=postgres
    POSTGRES_USER=postgres
    POSTGRES_PASSWORD=postgres
    DB_HOST=db
    DB_PORT=5432 
```

### Как запустить проект:

Клонировать репозиторий и перейти в него в командной строке:

`git clone git@github.com:0z0nize/infra_sp2.git`

Сборка и запкуск контейнера:

`docker-compose up -d`

Заполнить базу данных:

`docker-compose exec web python manage.py csv_to_db`

Создать суперюзера:

`docker-compose exec web python manage.py createsuperuser`

Остановка контейнера:

`docker-compose down -v`

### После запуска проекта по адресу: 

`http://localhost/redoc/`

будет доступна документация для api_yamdb. В документации описано, как будет работать API. Документация представлена в формате Redoc.

### Примеры некоторых запросов API
* Доступ к списку всех категорий:
GET /api/v1/categories/
* Доступ к списку всех жанров:
GET /api/v1/genres/
* Получение списка всех произведений:
GET /api/v1/titles/
* Получение списка всех отзывов:
GET /api/v1/titles/{title_id}/reviews/
* Получение списка всех комментариев к отзыву:
GET /api/v1/titles/{title_id}/reviews/{review_id}/comments/
* Получение списка всех пользователей:
GET /api/v1/users/
* Регистрация нового пользователя:
POST /api/v1/auth/signup/
* Получение JWT-токена:
POST /api/v1/auth/token/



##### Команда разработки:
##### [_Владислав Шкаровский_](https://github.com/0z0nize)
(категории, жанры и произведения: модели, view и эндпойнты для них, docker)
##### [_Кирилл Мирончук_](https://github.com/kirillicetea)
(управление пользователями: система регистрации и аутентификации, права доступа, работа с токеном, система подтверждения e-mail)
##### [_Тарасова Ольга_](https://github.com/olga159)
(отзывы и комментарии: модели и view, эндпойнты, права доступа для запросов. Рейтинги произведений)
