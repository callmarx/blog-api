## Blog em RESTful JSON API

### Configurações necessarias

Versão ruby: >= 2.4

```console
$ ruby -v
ruby 2.4.0p0 (2016-12-24 revision 57164) [x86_64-linux]
```

Versão Rails: >= 5.0

```console
$ rails -v
Rails 5.0.2
```
Clone o projeto e dentro da pasta execute:
```console
$ bundle install
$ rails db:create
$ rails db:migrate
$ rails db:seed
```

Agora basta utilizar o servidor teste do Rails :
```console
$ rails s
=> Booting Puma
=> Rails 5.0.2 application starting in development on http://localhost:3000
=> Run `rails server -h` for more startup options
Puma starting in single mode...
* Version 3.8.2 (ruby 2.4.0-p0), codename: Sassy Salamander
* Min threads: 5, max threads: 5
* Environment: development
* Listening on tcp://localhost:3000
```
### Administrativo
Para painel administrativo acesse via navegador http://localhost:3000/admin com o usuário admin teste:
```console
email: 'admin@example.com'
password: 'password'
```
### API
Para login de usuário teste faça a seguinte requisição POST
```console
http://localhost:3000/api/auth/sign_in
Headers
email: joaoalmeida@test.com
password: testtest
```
Utilize os Headers obtidos no login para as requisições de posts:
```console
"access-token": "wwwww",
"token-type":   "Bearer",
"client":       "xxxxx",
"expiry":       "yyyyy",
"uid":          "zzzzz"
```
Exemplos (seguindo a base de dados enserido por ./db/seeds.rb):
* Criar um post
  ```
  POST /api/posts HTTP/1.1
  Host: localhost:3000
  access-token: FSBwFhA6LAyDg67oQIC9jQ
  client: MX6mwIeRUVVfjYQgGfHfdA
  expiry: 1495481501
  token-type: Bearer
  uid: joaoalmeida@test.com
  Content-Type: application/json
  Cache-Control: no-cache
  Postman-Token: d9f749a3-607c-706f-9a55-68c888fcff0e

  {
  	"title" : "Outro Post",
  	"body" : "esse foi feito pelo postman"
  }
  ```
  O post será criado como pertencente ao usario logado, ou seja *joaoalmeida@test.com*, *user_id=1*
* Excluir um post
  ```
  DELETE /api/posts/3 HTTP/1.1
  Host: localhost:3000
  access-token: FSBwFhA6LAyDg67oQIC9jQ
  client: MX6mwIeRUVVfjYQgGfHfdA
  expiry: 1495481501
  token-type: Bearer
  uid: joaoalmeida@test.com
  Content-Type: application/json
  Cache-Control: no-cache
  Postman-Token: 56acee9d-9e16-de5b-0528-e07d301ca6d2
  ```
  Neste exemplo retornara erro de autorização pois o usuário *joaoalmeida@test.com* não pode excluir posts de outros usuários (*post_id=3* pertece à *mariasila@test.com*).

**OBS: Os usuários do blog pertencem ao *User Model* e os usuarios administrativos ao *AdminUser Model***
