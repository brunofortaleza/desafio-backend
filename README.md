## Descrição do desafio

Você já ouviu falar da CEAP? A Cota para o Exercício da Atividade Parlamentar, custeia as despesas do mandato, como passagens aéreas e conta de celular. Algumas são reembolsadas, como as com os Correios, e outras são pagas por débito automático, como a compra de passagens. Nos casos de reembolso, os deputados têm três meses para apresentar os recibos. O valor mensal não utilizado fica acumulado ao longo do ano. Por esse motivo, em alguns meses o valor gasto pode ser maior que a média mensal. (Fonte: [Portal da Câmara dos Deputados](https://www2.camara.leg.br/transparencia/acesso-a-informacao/copy_of_perguntas-frequentes/cota-para-o-exercicio-da-atividade-parlamentar)). Através do portal da transparência, nós temos acesso a essas despesas e podemos saber como e onde os políticos estão gastando.

## Base de dados e explicações complementares

- [Fonte de dados (pegar o referente ao ano 2021 em formato CSV)](https://dadosabertos.camara.leg.br/swagger/api.html#staticfile)
- [Explicação dos campos do arquivo CSV](https://www2.camara.leg.br/transparencia/cota-para-exercicio-da-atividade-parlamentar/explicacoes-sobre-o-formato-dos-arquivos-xml)
- Ignorar linhas que não tenham no campo `sgUF` o estado que você mora. O objetivo do trabalho é focar apenas no seu estado;
- Considerar para fins de cálculos de despesa, o campo `vlrLiquido`. Esse é o valor que de fato foi debitado da cota do candidato;
- Dica para pegar a foto do político: **http://www.camara.leg.br/internet/deputado/bandep/{ideCadastro}.jpg**

## Para rodar a aplicação

### Necessário 

Para rodar o projeto é necessário ter:

  1. Ruby 2.6.5
  2. Ruby on Rails 6.0.3
  3. PostgreSQL

### Dependências

Instalar as dependências necessárias:

```
  $ bundle install
  $ yarn install
```

### Banco de dados

Criar o banco de dados:

```
  $ rails db:create
  $ rails db:migrate
```

### Rodar a aplicação

Com o ambiente configurado:

```
  $ rails s
```