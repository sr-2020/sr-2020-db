# sr-2020-db
Сommon database on host: instance.evarun.ru
- RC stage: rc_sr2020
- Production stage: sr2020

## 1. Установка локально
### 1.1. Качаем flyway c https://flywaydb.org/
### 1.2. Прописываем  **flywayInstallDir** в PATH
### 1.3. Настраиваем конфиг  
 **flywayInstallDir**/conf/flyway.conf
 
  прописываем JDBC соединение с БД
 flyway.url=jdbc:postgresql://localhost:5432/sr2020
 flyway.user=backend
 flyway.password=пароль

подробно - тут
https://flywaydb.org/getstarted/firststeps/commandline

### 1.4. заходим в /migrations 
### 1.5. Запускаем flyway migrate из консоли


## 2. Установка через Docker
### 2.1. Устанавливаем Docker (https://docs.docker.com/install/)
### 2.2. Устанавливаем Docker Compose (https://docs.docker.com/compose/install/)
Для Linux можно установить выполнив команду из корня репозитория
```
make install-docker-compose
```
### 2.3. Копируем конфиг, для Windows cp заменить на copy.
```
cp .env.example .env
```
### 2.4. Поднимаем Docker Compose
```
docker-compose up -d
```
После этого немного ждем, пока Postgres поднимется внутри контейнера.
### 2.5. Прогоняем миграции
```
make migrate
```

## 3. Добавление новой миграции
### 3.1. Создаем новый файл миграции
В дирректории `sql/` создаем файл с именем `Vn.n.n__name.sql` по аналогии с уже созданными. Версия нового файла должна быть больше всех уже ранее созданных.
### 3.2. Создаем коммит с файлом новой миграции в ветке `rc`.
Не забывая сделать для нее `rebase` с актуальным `master`:

```
git fetch origin master:master
git rebase master
```
Далее пушим его в ветку `rc`. Должна появиться сборка `rc`. Смотрим за сборкой: https://travis-ci.org/sr-2020/sr-2020-db/builds
Если сборка прошла успешно, значит ваша миграция накатилась на базу данных `rc_sr2020`.
Подключиться к ней можно так:
```
psql -h instance.evarun.ru -U backend rc_sr2020
```
Если все хорошо идем дальше.
### 3.2. Мержим `rc` в `master`.
```
git checkout master
git merge rc
```
Должна появиться сборка `master`. Смотрим за сборкой: https://travis-ci.org/sr-2020/sr-2020-db/builds
Проверяем миграцию на основной базе `sr2020`
```
psql -h instance.evarun.ru -U backend sr2020
```

```sh
helm secrets install pg13 -f helm/pg13/values.yaml -f helm/pg13/secrets.yaml bitnami/postgresql

helm secrets upgrade pg13 -f helm/pg13/values.yaml -f helm/pg13/secrets.yaml bitnami/postgresql
```

kubectl port-forward pg13-postgresql-primary-0 5430:5432

```sh
helm install pg-exporter -f helm/pg-exporter/values.yaml prometheus-community/prometheus-postgres-exporter

helm upgrade pg-exporter -f helm/pg-exporter/values.yaml prometheus-community/prometheus-postgres-exporter
```

```sh
helm install prometheus -f helm/prometheus/values.yaml prometheus-community/prometheus

helm upgrade prometheus -f helm/prometheus/values.yaml prometheus-community/prometheus
```
