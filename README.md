# WEIT 2023: Minicurso de Model Checking na Verificação Formal de Sistemas Autônomos

Este repositório apresenta a utilização de Model Checking na Verificação Formal de Sistemas Autônomos. Conteúdo do curso ministrado no WEIT'23 (VII Workshop-Escola de Informática Teórica).

Título: Utilização de Model Checking na verificação formal de sistemas autônomos

Descrição: Neste minicurso será apresentado um modelo formal que representa um sistema autônomo simples. Tal modelo será construído na ferramenta de model checking UPPALL, onde é possível simular o modelo e também executar verificações formais usando lógica temporal. O minicurso tem o seguinte programa:

1. Guia de Instalação do UPPAAL

2. Visão geral de autômato temporal e lógica temporal.

3. Utilização da ferramenta de model checking UPPALL.

4. Exemplos com representação de veículos autônomos em cenários de trânsito urbano com o UPPAAL.

5. Verificação formal de propriedades temporais.

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

Consultar material de apoio (Slides e Apostila).

---------------------------------------------------------------------

## Utilização básica do UPPALL

Consultar material de apoio (Slides e Apostila) e também a documentação oficial da ferramenta [UPPAAL](https://docs.uppaal.org/).

---------------------------------------------------------------------

## Exemplos com representação de veículos autônomos em cenários de trânsito urbano com o UPPAAL

### 1. Sensor de chuva

O primeiro exemplo apresenta um sistema bastante simples para acionar um limpador de parábrisa (quando está chovendo) de um carro .
Esse exemplo utiliza apenas um único modelo (autômato) com uso simples de variáveis booleanas. Veja o modelo do sistema na figura abaixo.

![Figura 1](imgs/ex-01.png).

Definição das variáveis e declarações do sistema.

```java
bool chuva = false;

...

// Place template instantiations here.
sensorCarro1 = sensorchuva();
// List one or more processes to be composed into a system.
system sensorCarro1;
```

Código do modelo disponível em ![Exemplo 1 - xml](????).

### 2. Único autômato (veículo)

Neste segundo exemplo é iustrado um cenário com um VA (Veículo Autônomo) aproximando-se de um cruzamento urbano. O cruzamento pode estar *livre* ou *ocupado*. São usadas apenas variáveis booleanas e um contador (variável) para controlar o acesso do veículo. Veja o modelo do sistema na figura abaixo.

![Figura 2](imgs/ex-02.png).

Definição das variáveis e declarações do sistema.

```java
bool nocruzamento = false;
bool livre = true;
int aguardar= 0;

...

// Place template instantiations here.
carro1 = VA();
// List one or more processes to be composed into a system.
system carro1;
```

Código do modelo disponível em ![Exemplo 2 - xml](????).

### 3. Veículo e Controlador (canais)

No terceiro exemplo há uma rede de autômatos com dois modelos: um veículo autônomo e um controlar do cruzamento. Então, neste modelo utilizam-se os canais de sincronização para habilitar a comunicação entre os autômatos. O VA deve avisar ao cruzamento quando está *próximo*, por sua vez o cruzamento deve informar ao VA se o cruzamento está *livre* ou *ocupado*. Veja o modelo do sistema na figura abaixo.

[Figura 3](imgs/ex-03.png).

Definição das variáveis e declarações do sistema.

```java
int aguardar = 0;
chan proximo, livre, ocupado, longe;

...

// Place template instantiations here.
carro = VA();
cruzamento = Controle();
// List one or more processes to be composed into a system.
system carro, cruzamento;
```

Código do modelo disponível em ![Exemplo 3 - xml](????).

**Observação**: considere o modelo na [Figura 3 - erro](imgs/ex-03-deadlock.png) perceba que esse modelo gera um deadlock.


### 4. Veículo e Controlador (clocks e diversas instâncias) 

Esse exemplo é uma extensão do anterior. Agora, além dos canais são usados clocks para estabelecer uma restrição temporal do tempo para que o VA verifique novamente o cruzamento quando está ocupado. 
Esse exemplo e os demais são baseados no cenário ilustrado na 
![Figura cenário](imgs/scenarios-weit-23.png)

Veja o modelo do sistema nas figuras abaixo.

[Figura 4 - a](imgs/ex-04-a.png) e [Figura 4 - b](imgs/ex-04-b.png).

Definição dos canais, variáveis e declarações do sistema.

```java
chan proximo, livre, ocupado, longe;

...

clock aguardar = 0;

...

// Place template instantiations here.
carro1 = VA();
carro2 = VA();
carro3 = VA();
carro4 = VA();
cruzamento = Controle();
// List one or more processes to be composed into a system.
// system carro1, cruzamento;
system carro1, carro2, carro3, carro4, cruzamento;
```

Note que neste exemplo foram definidas quatro instâncias para o modelo do veículo.
Assim, quando é feita a simulação do modelo é possível perceber a comunicação entre os elementos, ver  
[Exemplo 4 - diagrama](imgs/ex-04-diagrama-seq.png).


Código do modelo disponível em [Exemplo 4 - xml](????).

### 5. Exercícios:

#### 5.1 Sensor de chuva com canais e clock

Considerando o exemplo 1 (sensor de chuva) faça o seguinte:
##### a.) Crie um novo modelo (autômato) que represente um recurso que informe via canais de sincronização se está chovendo ou não.

##### b.) Verifique quais definições de variáveis e canais serão necessárias.

##### c.) Adicione também uma restrição temporal para que o dispositivo seja acionado em uma janela de tempo entre 2 e 5 unidades de tempo em caso de *chuva moderada*.

##### d.) Assim o modelo devo considerar três possibilidades: **i**. sem chuva; 
**ii**. chuva moderada;
**iii** chuva.

##### e.) Elabore propriedades que sejam verificadas formalmente. Sugestão: *Sempre é verdade que quando está chovendo, então o dispositivo será ativado*.

#### 5.2 Veículo e placa de pare

Considerando o exemplo 4 (visto anteriormente) faça o seguinte:

##### a.) Altere o exemplo para que agora exista um recurso que informe se há ou não uma placa de **Pare** no cruzamento. Caso exista uma placa então o VA tem uma janela de 1 até 3 unidades de tempo para verificar novamente o status do cruzamento.

##### b.) Identifique o que necessário mudar em termos de variáveis, canais e instâncias.

##### c.) Execute as devidas simulações para averiguar o devido funcionamento do modelo.

##### d.) Elabore propriedades formais para verificar o funcionamento do modelo. Sugestão: *Sempre é verdade que quando o VA passa pelo cruzamento, então o cruzamento está livre*.

#### 5.3 Exercícios complementares

Implementar no UPPAAL os exemplos da [Apostila](???).

### 6. Veículo, place de pare e pedestre

Continuando com o mesmo cenário da [Figura cenário](imgs/scenarios-weit-23.png), agora o VA quando chegar no cruzamento deve verificar se há uma placa de pare no cruzamento ou se há um pedestre ou se o cruzamento está livre.  
Veja a definição da restrição temporal do modelo na figura abaixo.

[Figura 6 - a](imgs/ex-06-d.png).

Veja o modelo do sistema nas figuras abaixo.

[Figura 6 - b](imgs/ex-06-a.png)  e  [Figura 6 - c](imgs/ex-06-b.png).


Definição dos canais, variáveis e declarações do sistema.

```java
bool chuva = false;

...

// Place template instantiations here.
sensorCarro1 = sensorchuva();
// List one or more processes to be composed into a system.
system sensorCarro1;
```

Neste exemplo foram estabelecidas quatro instâncias do VA.
Quando é feita a simulação do modelo é possível perceber a utilização dos canais de sincronização conforme a disputa de recursos que ocorre entre as instâncias do VA e os dois recursos da rede de autômatos: *place pare* e *pedestre*.
Ver [Exemplo 6 - diagrama](imgs/ex-06-c.png).


Além disso, a Figura [Exemplo 6 - cobertura](imgs/ex-06-e-coverage.png) ilustra gráficos de cobertura dos nós e arestas dos autômatos do sistema.

Código do modelo disponível em ![Exemplo 6 - xml](????).

---------------------------------------------------------------------
    
## Verificação formal de propriedades

Consultar material de apoio (Apostila) e também a documentação oficial da ferramenta [UPPAAL Verificador](https://docs.uppaal.org/gui-reference/verifier/).

---------------------------------------------------------------------

## Informações complementares

- Curso elaborado pelo professor Gleifer Vaz Alves (UTFPR - Campus Ponta Grossa)
- e-mail: gleifer@utfpr.edu.br
- [Site com maiores Informações de pesquisa](https://sites.google.com/view/gleifer)
- Site do lab. de pesquisa [LaCA-IS](https://laca-is.github.io/)

---------------------------------------------------------------------
---------------------------------------------------------------------
