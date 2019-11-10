# sr-2020-db
common database


##1. Установка
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
