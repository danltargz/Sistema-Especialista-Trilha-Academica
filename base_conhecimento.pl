% Trilhas 
trilha(inteligencia_artificial, 'IA: modelos e resolucao de problemas complexos.').
trilha(desenvolvimento_web, 'Web: construcao de apps web frontend/backend.').
trilha(ciencia_de_dados, 'CD: analise e interpretacao de dados.').
trilha(seguranca_da_informacao, 'SegInfo: defesa, riscos e conformidade.').
trilha(redes_e_infraestrutura, 'Redes/Infra: redes, sistemas e cloud.').

% Caracteristicas - peso 1 a 5
perfil(inteligencia_artificial, logica_programacao, 5).
perfil(inteligencia_artificial, matematica_estatistica, 5).
perfil(inteligencia_artificial, programacao_python, 4).

perfil(desenvolvimento_web, design_visual, 3).
perfil(desenvolvimento_web, programacao_javascript, 5).
perfil(desenvolvimento_web, bancos_de_dados, 4).

perfil(ciencia_de_dados, matematica_estatistica, 5).
perfil(ciencia_de_dados, programacao_python, 5).
perfil(ciencia_de_dados, storytelling_dados, 3).

perfil(seguranca_da_informacao, redes, 4).
perfil(seguranca_da_informacao, sistemas_operacionais, 4).
perfil(seguranca_da_informacao, conformidade, 3).

perfil(redes_e_infraestrutura, redes, 5).
perfil(redes_e_infraestrutura, sistemas_operacionais, 4).
perfil(redes_e_infraestrutura, cloud, 4).

% Perguntas (id, texto, caracteristica) – respostas esperadas: s/n
pergunta(1, 'Voce curte logica de programacao?', logica_programacao).
pergunta(2, 'Voce tem afinidade com matematica ou estatistica?', matematica_estatistica).
pergunta(3, 'Voce programa em Python?', programacao_python).
pergunta(4, 'Voce gosta de design e interfaces?', design_visual).
pergunta(5, 'Voce curte JavaScript e web?', programacao_javascript).
pergunta(6, 'Voce gosta de bancos de dados?', bancos_de_dados).
pergunta(7, 'Voce curte contar historias com dados?', storytelling_dados).
pergunta(8, 'Voce se interessa por redes de computadores?', redes).
pergunta(9, 'Voce curte sistemas operacionais e baixo nivel?', sistemas_operacionais).
pergunta(10,'Voce se interessa por seguranca?', conformidade).
pergunta(11,'Voce tem interesse em cloud e infraestrutura?', cloud).

:- dynamic resposta/2.

% Calcula a pontuação de uma trilha somando os pesos das características
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

% Gera uma lista ordenada pela pontuação em ordem decrescente
recomenda(Ranking) :-
    findall(pontuacao(Trilha, Pontuacao, Caracteristicas),
        calcula_pontuacao(Trilha, Pontuacao, Caracteristicas),
        Resultados),
    sort(2, @>=, Resultados, Ranking). 

% Exibe o ranking de forma organizada
exibe_resultado([]).
exibe_resultado([pontuacao(Trilha, Pontuacao, Caracteristicas)|T]) :-
    trilha(Trilha, Descricao),
    format('~nTrilha: ~w (~w pontos)~nDescricao: ~w~nCaracterísticas: ~w~n',
           [Trilha, Pontuacao, Descricao, Caracteristicas]),
    exibe_resultado(T).

/*
trilha(T, Desc).
perfil(inteligencia_artificial, C, P).
pergunta(Id, Texto, Carac).
*/

/*
Respostas de teste
resposta(1, s).
resposta(2, s).
resposta(3, n).
resposta(4, s).
resposta(5, n).
resposta(6, n).
resposta(7, s).
resposta(8, s).
resposta(9, n).
resposta(10, s).
resposta(11, n).
*/

/*
Queries usada para teste
calcula_pontuacao(redes_e_infraestrutura, P, C). -> Exibe a pontuação de uma trilha específica
recomenda(R), exibe_resultado(R). -> Exibe o ranking formatado.
*/
