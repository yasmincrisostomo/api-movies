## **Desafio Backend Mobile2You**

Desafio proposto pela Mobile2You - Dimensa para criação de API.

> 🎯 Objetivo: Criar uma API de serviço do catálogo de filmes com dois endpoints. O primeiro deverá fazer a leitura de um arquivo CSV e criar os registros no banco de dados. Já o segundo deverá listar todos os filmes cadastrados em formato JSON.

#### **🔧 Como rodar a aplicação:**
```
git clone git@github.com:yasmincrisostom/api-movies.git
```
```
cd api-movies
```
```
bundle install
```
```
rails db:create db:migrate db:seed
```
```
rails server
```

#### **🔨 Como rodar os testes:**
```
rails test
```

#### **🛠 Esse projeto foi construído com:**
- Ruby 3.0.3
- Rails 6.1.6
- PostgreSQL
- Gem 'pg_search'
