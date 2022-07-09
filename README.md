# Desafio Backend Mobile2You

Desafio proposto pela Mobile2You - Dimensa para criação de API.

> 🎯 Objetivo: Criar uma API de serviço do catálogo de filmes com dois endpoints. O primeiro deverá fazer a leitura de um arquivo CSV e criar os registros no banco de dados. Já o segundo deverá listar todos os filmes cadastrados em formato JSON.

#### **💻 Como funciona a API:**
As requisições para esta API devem seguir os padrões:
| Método | Descrição |
|---|---|
| `GET` | Retorna informações de um ou mais registros.[^1] |
| `POST` | Utilizado para criar um novo registro. |

[^1]:Por padrão, as ações de `listar` exibem `100` registros por página.

- Como acessar determinados registros?

Com a gema 'pg_search', os filmes podem ser filtrados de acordo com suas propriedades: `title`, `year`, `gender` e `country`. Assim como podem ser limitados com o `limit`. Exemplo:
```
http://localhost:3000/?query=13TH&limit=1
```

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
rails db:create db:migrate
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
