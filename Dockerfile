# Use a imagem oficial do PostgreSQL como a imagem base
FROM postgres

# Copie o diretório .sql para dentro do contêiner
COPY ./sql-scripts/tese_db.sql /docker-entrypoint-initdb.d/

# Defina as variáveis de ambiente
ENV POSTGRES_PASSWORD postgres
ENV POSTGRES_USER postgres
ENV POSTGRES_DB tese
ENV POSTGRES_PORT 5432

# Exponha a porta do PostgreSQL
EXPOSE 5432

# Defina o volume para persistência de dados
# VOLUME /var/lib/postgresql/data