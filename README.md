## Sistema Especialista para Recomendação de Trilha Acadêmica

**Instituição:** Pontifícia Universidade Católica do Paraná 

**Disciplina:** Programação Lógica e Funcional

**Professor:** Frank Coelho de Alcantara 

**Alunos:**
- Danillo Gonçalves Camargo da Silva - [danltargz](https://github.com/danltargz)  
- Guilherme Felippe Lazari - [Guilherme006](https://github.com/Guilherme006)  
- Rodrigo Schiavinatto Plassmann - [rodrigoplassmann](https://github.com/rodrigoplassmann)  
- Thomas Manussadjian Steinhausser - [DraNefario](https://github.com/DraNefario)  

## Índice:

- [Competências](#competências)
- [Arquitetura Lógica e Predicados do Sistema](#arquitetura-lógica-e-predicados-do-sistema)
- [Instalação do SWI-Prolog](#instalação-do-swi-prolog)
- [Como Executar o Projeto](#como-executar-o-projeto)
  * [Passos](#passos)
  * [Testes Automatizados](#testes-automatizados)

---

 ### Competências:

**Aluno 1 – Guilherme Felippe Lazari (Modelagem da Base de Conhecimento)**  
- Pesquisar e definir as trilhas de especialização.  
- Definir as características de perfil associadas a cada trilha com pesos de importância.  
- Elaborar as perguntas que serão feitas ao usuário.  

---

**Aluno 2 – Rodrigo Schiavinatto Plassmann (Implementação do Motor de Inferência)**  
- Desenvolver as regras em Prolog que calculam a pontuação de compatibilidade para cada trilha.  
- Implementar a lógica principal de raciocínio do sistema.  

---

**Aluno 3 – Thomas Manussadjian Steinhausser (Interface com o Usuário e Fluxo de Execução)**  
- Implementar os predicados responsáveis pela interação com o usuário.  
- Criar o fluxo principal do programa (`iniciar -> perguntar -> calcular -> exibir`).  

---

**Aluno 4 – Danillo Gonçalves Camargo da Silva (Testes, Documentação e Gerenciamento do Repositório)**  
- Criar os arquivos de teste com perfis de alunos distintos.  
- Desenvolver predicados de teste para carregar perfis e validar resultados.  
- Manter o repositório no GitHub, escrever o `README.md` e integrar o trabalho do grupo.  

---
## Arquitetura Lógica e Predicados do Sistema:

**Trilha:**
Os fatos que definem o catálogo de trilhas do sistema são compostos por dois argumentos: o primeiro, o nome da trilha (utilizado internamente) e o segundo, a descrição exibida ao usuário. A definição desses argumentos é baseada no conhecimento do domínio, não em regras predefinidas.

```
trilha(inteligencia_artificial, 'IA: modelos e resolucao de problemas complexos.').
trilha(desenvolvimento_web, 'Web: construcao de apps web frontend/backend.').
trilha(ciencia_de_dados, 'CD: analise e interpretacao de dados.').
trilha(seguranca_da_informacao, 'SegInfo: defesa, riscos e conformidade.').
trilha(redes_e_infraestrutura, 'Redes/Infra: redes, sistemas e cloud.').
...
```

**Perfil:**
Mapeia quanto cada trilha valoriza uma característica. A forma é perfil (Trilha, Característica, Peso), em que Peso pertence ao conjunto (1 a 5). Na pontuação, quando a característica aparece marcada “sim” pelo usuário, a trilha soma esse peso.

```
perfil(inteligencia_artificial, logica_programacao, 5).
perfil(inteligencia_artificial, matematica_estatistica, 5).
perfil(inteligencia_artificial, programacao_python, 4).
perfil(inteligencia_artificial, etica_ia, 3).
...
```

**Pergunta:**
Defina o questionário do sistema. Cada fato é representado por uma pergunta (Id, Texto, Característica) e vincula um texto a ser apresentado ao usuário a uma única característica. Essa característica será o elo entre a resposta do usuário e a pontuação das trilhas.

```
pergunta(1, 'Voce curte logica de programacao?', logica_programacao).
pergunta(2, 'Voce tem afinidade com matematica ou estatistica?', matematica_estatistica).
pergunta(3, 'Voce programa em Python?', programacao_python).
pergunta(4, 'Voce gosta de design e interfaces?', design_visual).
...
```

**Resposta:**
Base de fatos dinâmica onde o programa grava as respostas do usuário durante a execução:resposta(Id, s|n). É limpa e preenchida a cada execução.

**Calcula Pontuacao:**
Calcula a pontuação total de uma trilha e retorna também a justificativa. Para uma trilha, coleta todas as tuplas (Característica, Peso) em que há uma pergunta daquela característica com resposta (n, s), some os Pesos (utilizando a função ```sum_list/2```) e retorna, no terceiro argumento, a lista sem repetição das características que foram consideradas (utilizando a função ```list_to_set/2```).

```
calcula_pontuacao(Trilha, Pontuacao, Caracteristicas) :-
    trilha(Trilha, _),
    findall((Caracteristica, Peso),
        (perfil(Trilha, Caracteristica, Peso),
         pergunta(N, _, Caracteristica),
         resposta(N, s)),
        Lista),
    findall(P, member((_, P), Lista), Pesos),
    sum_list(Pesos, Pontuacao),
    findall(C, member((C, _), Lista), CaracteristicasDup),
	list_to_set(CaracteristicasDup, Caracteristicas).
```

**Recomenda:**
Gera a classificação completa das trilhas. Para cada trilha, chame a função `calcula_pontuacao` e divide o resultado por três. Em seguida, cria termos “pontuacao” com os valores “Trilha”, “Pontos” e “Justificativa”. Utiliza a função “sort” com os argumentos “2”, `@>=` e a lista de termos para ordenar a lista de forma decrescente com base no segundo argumento de cada termo, ou seja, os pontos.

```
recomenda(Ranking) :-
    findall(pontuacao(Trilha, Pontuacao, Caracteristicas),
        calcula_pontuacao(Trilha, Pontuacao, Caracteristicas),
        Resultados),
    sort(2, @>=, Resultados, Ranking).
```

**Recomenda Maiores:**
Extrai o Top-N do ranking. Primeiramente, obtém-se o Ranking com a fórmula "recomenda". Em seguida, selecionam-se os N primeiros elementos e unificam-se com Top-N. Se N for maior que o tamanho do ranking, essa versão pode falhar uma alternativa é usar `prefix_length`.

```
recomenda_maiores(N, TopN) :-
    recomenda(Ranking),
    length(TopN, N),
    append(TopN, _, Ranking).
```

**Exibe Resultado:**
Gera a impressão formatada dos resultados. Para cada pontuação (Trilha, Pontos, Características), busca a descrição com trilha e imprime trilha, pontos, descrição e a justificativa (características). Percorre a lista recursivamente até que esteja vazia.

```
exibe_resultado([]).
exibe_resultado([pontuacao(Trilha, Pontuacao, Caracteristicas)|T]) :-
    trilha(Trilha, Descricao),
    format('~nTrilha: ~w (~w pontos)~nDescricao: ~w~nCaracterísticas: ~w~n',
           [Trilha, Pontuacao, Descricao, Caracteristicas]),
    exibe_resultado(T).
```

**Limpar Respostas:**
Reinicializa o estado antes de iniciar: remova todos os fatos `resposta/2` atualmente assertados `(retractall/1)`. Isso evita que respostas antigas interfiram em uma nova execução.

```
limpar_respostas :-
    retractall(resposta(_, _)).
```

**Faz Perguntas:**
Percorre todas as perguntas declaradas e executa a função `perguntar/2` para cada uma delas. Utiliza `forall/2` para assegurar que cada fato `pergunta/3` seja processado exatamente uma vez.

```
faz_perguntas :-
    forall(pergunta(Id, Texto, _),
           perguntar(Id, Texto)).
```

**Perguntar:**
Realiza a interação para uma pergunta específica (Id, Texto). Exibe o texto, lê a linha digitada e valida a resposta até obter “s” ou “n”. Em seguida, atualiza a base dinâmica, removendo quaisquer respostas anteriores daquele ID e inserindo a resposta atual.

```
perguntar(Id, Texto) :-
    format('~w~n', [Texto]),
    repeat,
        read_line_to_string(user_input, S0),
        normalize_space(string(S1), S0),
        string_lower(S1, S),
        ( S = "s" -> Resp = s
        ; S = "n" -> Resp = n
        ; writeln('Entrada invalida! Digite s ou n.'), fail
        ),
    !,
    retractall(resposta(Id, _)),
    assertz(resposta(Id, Resp)).
```

**Mostrar Completo:**
Controla a exibição do ranking completo. Normaliza a opção recebida (“s”/“n”). Se for “s”, invoca a função `recomenda/1` e imprime o resultado, já se for “n”, finaliza a execução e se for inválida, solicita uma nova entrada e repete o processo.

```
mostrar_completo(Opcao) :-
    normalize_space(string(S1), Opcao),
    string_lower(S1, S),
    ( S = "s" ->
        recomenda(Ranking),
        format("~n=== Ranking Completo ===~n", []),
        exibe_resultado(Ranking)
    ; S = "n" ->
        format("~nObrigado por usar o sistema de recomendacao!~n", [])
    ; 
      writeln("Entrada invalida. Digite apenas 's' ou 'n'."),
      read_line_to_string(user_input, S2),
      mostrar_completo(S2)
    ).
```

**Iniciar:**
Trata-se do fluxo interativo principal. Ele limpa as respostas, executa o questionário completo, calcula e imprime o Top 3 e, por fim, consulta o usuário sobre a visualização do ranking completo, agindo de acordo com a escolha.

```
iniciar :-
    limpar_respostas,
    faz_perguntas,
    recomenda_maiores(3, Top3),
    format("~n=== Top 3 Trilhas Recomendadas ===~n", []),
    exibe_resultado(Top3),
    format("~nDeseja ver o ranking completo? (s/n):~n", []),
    read_line_to_string(user_input, Opcao),
    mostrar_completo(Opcao).
```

**Rodar Teste:**
Trata-se do executor automático de testes. Ele recebe o caminho de um arquivo de perfil (contendo fatos `resposta/2` e, opcionalmente, `ver_todas(s|n)`), realiza a consulta de `consulta/1` nesse arquivo, imprime os três primeiros resultados e, caso o perfil declare `ver_todas(s)`, imprime também o ranking completo sem a necessidade de interação.

```
rodar_teste(ArquivoPerfil) :-
    consult(ArquivoPerfil),
    recomenda_maiores(3, Top3),
    format("~n=== Top 3 Trilhas Recomendadas ===~n", []),
    exibe_resultado(Top3),
    (   current_predicate(ver_todas/1), ver_todas(s) ->
            recomenda(Ranking),
            format("~n=== Ranking Completo ===~n", []),
            exibe_resultado(Ranking)
    ;   current_predicate(ver_todas/1), ver_todas(n) ->
            format("~nObrigado por usar o sistema de recomendacao!~n", [])
    ).
```

---

## Instalação do SWI-Prolog:

**Linux (Debian/Ubuntu):**
```
sudo apt install swi-prolog
```
**MacOS (Homebrew):**
```
brew install swi-prolog
```

**Windows:**
1. [SWI-Prolog Download](https://www.swi-prolog.org/download/stable)
2. Baixe o instalador ```.exe```
3. O execute e siga as instruções de instalação.

---

## Como Executar o Projeto:

### Passos:

1. Clone o repositório:
```
git clone https://github.com/danltargz/Sistema-Especialista-Trilha-Academica 
```

2. Navegue até a pasta do projeto:
```
cd Sistema-Especialista-Trilha-Academica
```

3. Execute o SWI-Prolog:
```
swipl
```

4. Carregue a base de conhecimento:
```
consult('base_conhecimento.pl').
```

5. Inicie a trilha com o seguinte comando:
```
iniciar.
```

6. Responda as perguntas com '```s```' para sim, e '```n```' para não, exemplo:
<img width="443" height="264" alt="image" src="https://github.com/user-attachments/assets/cd1aaf47-67ee-4e7c-b34e-eb17b8ca27b6" />

### Testes Automatizados:

Além de seguir os passos 1 e 2 do tópico anterior, rode o seguinte comando:
```
swipl -q -g "consult('base_conhecimento.pl'),rodar_teste('perfil_de_teste_x.pl')"
```
> OBS: Perfil de teste 1, 2 ou 3.
