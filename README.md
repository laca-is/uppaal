# WEIT 2023: Minicurso de Model Checking na Verificação Formal de Sistemas Autônomos

Este repositório apresenta a utilização de Model Checking na Verificação Formal de Sistemas Autônomos. Conteúdo do curso ministrado no WEIT'23 (VII Workshop-Escola de Informática Teórica).

Título: Utilização de Model Checking na verificação formal de sistemas autônomos

Descrição: Neste minicurso será apresentado um modelo formal que representa um sistema autônomo simples. Tal modelo será construído na ferramenta de model checking UPPALL, onde é possível simular o modelo e também executar verificações formais usando lógica temporal. O minicurso tem o seguinte programa:

1. Guia de Instalação do UPPAAL

2. Visão geral de autômato temporal e lógica temporal.

3. Utilização da ferramenta de model checking UPPALL.

4. Apresentação de exemplos de sistemas autônomos baseado em agentes representando veículos autônomos em cenários de trânsito urbano.

5. Construção dos exemplos usando o UPPAAL.

6. Verificação formal de propriedades temporais usando os exemplos anteriores.

---------------------------------------------------------------------

## Guia de Instalação do UPPAAL

1. Acessar o [link da ferramenta UPPAAL](https://uppaal.org/downloads/)

2. Faça o [registro](https://uppaal.veriaal.dk/academic.html) para obter uma licença acadêmica do UPPAAL.

3. Tendo feito o registro será enviado via e-mail (registrado) as informações da licensa acadêmica obtida.

4. Fazer o download da respectiva distribuição do UPPAAL da versão **5.0**:
* [Linux](https://download.uppaal.org/uppaal-5.0/uppaal-5.0.0/uppaal-5.0.0-linux64.zip)
* [Windows](https://download.uppaal.org/uppaal-5.0/uppaal-5.0.0/uppaal-5.0.0-win64.zip)
* [Mac](https://download.uppaal.org/uppaal-5.0/uppaal-5.0.0/UPPAAL-5.0.0-app.zip)

5. Fazer a respectiva instalação conforme a distribuição escolhida.

6. Mas, antes é necessário acessar o site oficial do UPPAAL e verificar as instruções complementares de instalação.

- no caso em relação à instalação do Java que é necessária para executar a interface gráfica da ferramenta.
- é necessário ter uma versão **Java >= 11**.
- veja tais [instruções complementares no site do UPPAAL](https://uppaal.org/downloads/) para proceder com a instalação do java (caso necessário).

7. O passo seguinte é simplesmente executar diretamente o arquivo do UPPAAL: 
- `uppaal.jar`
- ou `uppaal.exe`
- ou `uppaal`
* apenas, lembre-se que deve ter permissão para executar arquivos no diretório onde os arquivos do UPPAAL foram descompactados.

8. Executando com sucesso o programa. Na primeira vez, irá aparecer a janela gráfica do UPPAAL para ingressar a chave da licença, que foi recebida via e-mail.
* basta informar a chave e o acesso ao programa será imediatamente liberado.

9. Ainda é possível criar um atalho no computador, para facilmente abrir o UPPAAL nas próximas vezes. Para isso:
* No Linux, apenas executar o arquivo de script `AddLinks.sh` (que está disponível no mesmo diretório com demais arquivos do UPPAAL)
* No Windows, apenas executar o script `AddLinks.vbs`

10. Pronto! Agora a ferramenta está devidamente instalada. Para fazer um teste rápido.
* Abra a ferramenta.
* Selecione `File`
* Depois `Open Example`
* Escolha um exemplo como `Interrupt`, com isso o modelo com os autômatos temporais será aberto na aba `Editor`.


---------------------------------------------------------------------

## Conceitos básicos

#### Autômato temporal e Lógica temporal

```http
  GET /api/items
```

| Parâmetro   | Tipo       | Descrição                           |
| :---------- | :--------- | :---------------------------------- |
| `api_key` | `string` | **Obrigatório**. A chave da sua API |

#### Retorna um item

```http
  GET /api/items/${id}
```

| Parâmetro   | Tipo       | Descrição                                   |
| :---------- | :--------- | :------------------------------------------ |
| `id`      | `string` | **Obrigatório**. O ID do item que você quer |

#### add(num1, num2)

Recebe dois números e retorna a sua soma.


---------------------------------------------------------------------

## Utilização do UPPALL

| Cor               | Hexadecimal                                                |
| ----------------- | ---------------------------------------------------------------- |
| Cor exemplo       | ![#0a192f](https://via.placeholder.com/10/0a192f?text=+) #0a192f |
| Cor exemplo       | ![#f8f8f8](https://via.placeholder.com/10/f8f8f8?text=+) #f8f8f8 |
| Cor exemplo       | ![#00b48a](https://via.placeholder.com/10/00b48a?text=+) #00b48a |
| Cor exemplo       | ![#00d1a0](https://via.placeholder.com/10/00b48a?text=+) #00d1a0 |


---------------------------------------------------------------------

## Exemplos de sistemas autônomos

Contribuições são sempre bem-vindas!

Veja `contribuindo.md` para saber como começar.

Por favor, siga o `código de conduta` desse projeto.


---------------------------------------------------------------------

## Construção de exemplos com o UPPAAL

Instale my-project com npm

```bash
  npm install my-project
  cd my-project
```

---------------------------------------------------------------------
    
## Verificação formal de propriedades

```javascript
import Component from 'my-project'

function App() {
  return <Component />
}
```

---------------------------------------------------------------------

## Informações complementares

- Curso elaborado pelo professor Gleifer Vaz Alves (UTFPR - Campus Ponta Grossa)
- e-mail: gleifer@utfpr.edu.br
- [Site c/ maiores Informações de pesquisa](https://sites.google.com/view/gleifer)
- Site do lab. de pesquisa [LaCA-IS](https://laca-is.github.io/)

---------------------------------------------------------------------
---------------------------------------------------------------------
