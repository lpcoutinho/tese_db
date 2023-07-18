# Construindo e populando o banco de dados com Docker
## Construindo o banco de dados
Para construir O banco de dados PostgreSQL a partir de um container Docker basta seguir os passos abaixo. 
Você pode conferir e editar as variáveis de ambiente no arquivo `Dockerfile` e seguir com as atividades descritas.

Aqui estão os passos para fazer isso:

1. Certifique-se de ter o Docker instalado em sua máquina. Você pode baixá-lo e instalá-lo a partir do site oficial do Docker: https://www.docker.com/

3. Abra um terminal ou prompt de comando e navegue até o diretório do projeto onde existe o arquivo `Dockerfile`.

4. Execute o seguinte comando para montar o contêiner PostgreSQL:

   ```bash
   docker build -t nome-do-container .
   ```

5. Execute o seguinte comando para criar o banco de dados:

   ```bash
   docker run -d -p 5432:5432 nome-do-container
   ```

6. Uma vez que o contêiner esteja em execução, você pode se conectar ao banco de dados usando um cliente PostgreSQL (por exemplo, `Beekeeper`) para verificar se as tabelas e os dados foram criados corretamente.

Esse processo criará um contêiner PostgreSQL com o banco de dados inicializado de acordo com o arquivo `tese_db.sql` fornecido no diretório `tese_db.sql`. Certifique-se de estar com a porta 5432 aberta em sua máquina, caso contrário você poderá alterar a porta no comando descrito no passo 5, onde o primeiro valor refere-se a porta da sua máquina local que pode ser alterada. Lembre-se de não alterar o valor da porta após o símbolo `:`.

## Populando o banco de dados automaticamente

Para popular o banco de dados com informações de teste utilizando docker siga os passos abaixo:

1. Verifique a identificação do container Docker(CONTAINER ID). Deve ser um conjunto de caracteres como `671516da3063`.

```bash
docker ps
```

2. Copie o arquivo `data.sql` para dentro do container.

```bash
docker cp sql-scripts/data.sql container-id:/data.sql
```

3. Execute o arquivo dentro do container.
```bash
docker exec -it container-id psql -U postgres -d tese -f data.sql
```

Este processo irá popular o banco de dados de acordo com as informações inseridas em `data.sql`Fique a vontade para editar o arquivo e testar a base de dados.

---
# Construindo e populando o banco de dados em ambiente Windows
Se você está executando o PostgreSQL diretamente no ambiente Windows, sem o uso do Docker, pode seguir as etapas abaixo para criar e popular o banco de dados.

1. Certifique-se de ter o PostgreSQL instalado em sua máquina. Você pode baixá-lo e instalá-lo a partir do site oficial do PostgreSQL: https://www.postgresql.org/

2. Abra o prompt de comando do Windows e navegue até o diretório onde você possui o arquivo `tese_db.sql` contendo a query para criar o banco de dados.

3. Execute o seguinte comando para criar o banco de dados e executar a query:

   ```bash
   psql -U nome-do-usuario -d nome-do-banco-de-dados -f tese_db.sql
   ```

   Certifique-se de substituir `nome-do-usuario`, `nome-do-banco-de-dados` e `nome-do-arquivo.sql` pelos valores correspondentes ao seu ambiente. Por exemplo:

   ```bash
   psql -U postgres -d tese -f tese_db.sql
   ```

   Isso criará o banco de dados e executará a query contida no arquivo `tese_db.sql`.

4. Se não houver erros, o banco de dados será criado e as tabelas serão criadas de acordo com a query. Você pode verificar a criação das tabelas executando comandos SQL para listar as tabelas:

   ```bash
   psql -U nome-do-usuario -d nome-do-banco-de-dados -c "\dt"
   ```

   Por exemplo:

   ```bash
   psql -U postgres -d tese -c "\dt"
   ```

   Isso listará todas as tabelas existentes no banco de dados.

5. Para popular o banco de dados foi criado o `data.sql` contendo as inserções de dados de teste. Você podee executá-lo usando o comando:

```bash
`psql -U nome-do-usuario -d nome-do-banco-de-dados -f nome-do-arquivo.sql`
```

Lembre-se de substituir `nome-do-usuario`, `nome-do-banco-de-dados` e `nome-do-arquivo.sql` pelos valores corretos do seu ambiente.

Essas etapas permitirão criar o banco de dados e popular com dados adicionais diretamente no ambiente Windows, sem a necessidade de usar o Docker.