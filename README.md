## **Desafio Backend Mobile2You**

Desafio proposto pela Mobile2You - Dimensa para criação de API.

- 🎯 Objetivo: Criar uma API de serviço do catálogo de filmes com dois endpoints. O primeiro deverá fazer a leitura de um arquivo CSV e criar os registros no banco de dados. Já o segundo deverá listar todos os filmes cadastrados em formato JSON.

#### **🔧 Passo a passo da execução do código:**
```
git clone git@github.com:yasmincrisostom/movies-api.git
```
```
cd movies-api
```
```
bundle install
```
```
rails db:migrate
```
```
rails test
```
```
rails server
```

#### **🛠 Esse projeto foi construído com:**
- Ruby 3.0.3
- Rails 6.1.6
- PostgreSQL
- Gem 'pg_search'
