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
Para login de usuário teste faça a seguinte requisição POST
```console
http://localhost:3000/auth/sign_in
Headers
email: joaoalmeida@test.com
password: testtest
```
Para visualizar os posts em http://localhost:3000/posts utilize os Headers obtidos no login:
```console
"access-token": "wwwww",
"token-type":   "Bearer",
"client":       "xxxxx",
"expiry":       "yyyyy",
"uid":          "zzzzz"
```

Para painel administrativo acesse via navegador http://localhost:3000/admin com o usuário admin teste:
```console
email: 'admin@example.com'
password: 'password'
```

#### OBS: Os usuários do blog pertencem ao User Model e os usuarios administrativos ao AdminUser Model
