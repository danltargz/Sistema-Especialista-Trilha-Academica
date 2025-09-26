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

:- dynamic resposta/2

% Calcula a pontuação de uma trilha somando os pesos das características
calcula_pontuacao(Trilha, Pontuacao) :-
    trilha(Trilha, _),
    findall(Peso,
        (perfil(Trilha, Caracteristica, Peso),
         pergunta(N, _, Caracteristica),
         resposta(N, s)),
        Pesos),
    sum_list(Pesos, Pontuacao).

/** 
trilha(T, Desc).
perfil(inteligencia_artificial, C, P).
pergunta(Id, Texto, Carac).
*/