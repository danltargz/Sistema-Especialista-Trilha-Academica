## Sistema Especialista para Recomendação de Trilha Acadêmica

**Instituição:** Pontifícia Universidade Católica do Paraná 

**Disciplina:** Programação Lógica e Funcional

**Professor:** Frank Coelho de Alcantara 

**Alunos:**
- Danillo Gonçalves Camargo da Silva - [danltargz](https://github.com/danltargz)  
- Guilherme Felippe Lazari - [Guilherme006](https://github.com/Guilherme006)  
- Rodrigo Schiavinatto Plassmann - [rodrigoplassmann](https://github.com/rodrigoplassmann)  
- Thomas Manussadjian Steinhausser - [DraNefario](https://github.com/DraNefario)  

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

