FROM flyway/flyway:6.1.1-alpine

ADD migrations/versioned /flyway/sql
