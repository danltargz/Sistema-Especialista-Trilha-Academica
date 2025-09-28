% Trilhas 
trilha(inteligencia_artificial, 'IA: modelos e resolucao de problemas complexos.').
trilha(desenvolvimento_web, 'Web: construcao de apps web frontend/backend.').
trilha(ciencia_de_dados, 'CD: analise e interpretacao de dados.').
trilha(seguranca_da_informacao, 'SegInfo: defesa, riscos e conformidade.').
trilha(redes_e_infraestrutura, 'Redes/Infra: redes, sistemas e cloud.').
trilha(desenvolvimento_mobile, 'Mobile: apps Android/iOS nativos e multiplataforma.').
trilha(devops_sre, 'DevOps/SRE: automacao, CI/CD, conteinerizacao e observabilidade.').
trilha(engenharia_de_dados, 'Eng. de Dados: pipelines ETL/ELT, streaming e governanca.').
trilha(arquitetura_de_software, 'Arquitetura: design de sistemas, dominios e escalabilidade.').
trilha(jogos_digitais, 'Games: programacao de jogos, engines e graficos.').
trilha(sistemas_embarcados_iot, 'Embarcados/IoT: C, microcontroladores e tempo real.').

% Caracteristicas - peso 1 a 5
perfil(inteligencia_artificial, logica_programacao, 5).
perfil(inteligencia_artificial, matematica_estatistica, 5).
perfil(inteligencia_artificial, programacao_python, 4).
perfil(inteligencia_artificial, etica_ia, 3).
perfil(inteligencia_artificial, comunicacao_time, 2).
perfil(inteligencia_artificial, documentacao, 1).

perfil(desenvolvimento_web, design_visual, 3).
perfil(desenvolvimento_web, programacao_javascript, 5).
perfil(desenvolvimento_web, bancos_de_dados, 4).
perfil(desenvolvimento_web, acessibilidade_web, 2).
perfil(desenvolvimento_web, documentacao, 1).

perfil(ciencia_de_dados, matematica_estatistica, 5).
perfil(ciencia_de_dados, programacao_python, 5).
perfil(ciencia_de_dados, storytelling_dados, 3).
perfil(ciencia_de_dados, sql, 4).
perfil(ciencia_de_dados, governanca_dados, 2).
perfil(ciencia_de_dados, documentacao, 1).

perfil(seguranca_da_informacao, redes, 4).
perfil(seguranca_da_informacao, sistemas_operacionais, 4).
perfil(seguranca_da_informacao, conformidade, 3).
perfil(seguranca_da_informacao, criptografia, 5).
perfil(seguranca_da_informacao, auditoria_logs, 2).
perfil(seguranca_da_informacao, documentacao, 1).

perfil(redes_e_infraestrutura, redes, 5).
perfil(redes_e_infraestrutura, sistemas_operacionais, 4).
perfil(redes_e_infraestrutura, cloud, 4).
perfil(redes_e_infraestrutura, monitoramento_observabilidade, 3).
perfil(redes_e_infraestrutura, custo_finops, 2).
perfil(redes_e_infraestrutura, documentacao, 1).

perfil(desenvolvimento_mobile, mobile_android_kotlin, 5).
perfil(desenvolvimento_mobile, mobile_ios_swift, 4).
perfil(desenvolvimento_mobile, mobile_flutter, 3).
perfil(desenvolvimento_mobile, usabilidade_mobile, 3).
perfil(desenvolvimento_mobile, apis_rest, 4).
perfil(desenvolvimento_mobile, testes_automatizados, 3).
perfil(desenvolvimento_mobile, publicacao_lojas, 2).
perfil(desenvolvimento_mobile, documentacao, 1).

perfil(devops_sre, ci_cd, 5).
perfil(devops_sre, docker, 4).
perfil(devops_sre, kubernetes, 4).
perfil(devops_sre, automacao_scripts, 4).
perfil(devops_sre, monitoramento_observabilidade, 3).
perfil(devops_sre, cloud, 4).
perfil(devops_sre, seguranca_aplicacoes, 3).
perfil(devops_sre, custo_finops, 2).
perfil(devops_sre, documentacao, 1).

perfil(engenharia_de_dados, etl, 5).
perfil(engenharia_de_dados, processamento_stream, 4).
perfil(engenharia_de_dados, big_data_hadoop, 4).
perfil(engenharia_de_dados, bancos_de_dados, 5).
perfil(engenharia_de_dados, sql, 4).
perfil(engenharia_de_dados, orquestracao_airflow, 3).
perfil(engenharia_de_dados, qualidade_dados, 3).
perfil(engenharia_de_dados, governanca_dados, 2).
perfil(engenharia_de_dados, comunicacao_time, 2).
perfil(engenharia_de_dados, documentacao, 1).

perfil(arquitetura_de_software, design_patterns, 5).
perfil(arquitetura_de_software, modelagem_dominio, 5).
perfil(arquitetura_de_software, arquitetura_microservicos, 4).
perfil(arquitetura_de_software, performance_escalabilidade, 4).
perfil(arquitetura_de_software, requisitos_engenharia, 3).
perfil(arquitetura_de_software, testes_automatizados, 3).
perfil(arquitetura_de_software, seguranca_aplicacoes, 3).
perfil(arquitetura_de_software, comunicacao_time, 2).
perfil(arquitetura_de_software, documentacao, 1).

perfil(jogos_digitais, programacao_cplusplus, 5).
perfil(jogos_digitais, game_engines_unity, 4).
perfil(jogos_digitais, matematica_grafica, 4).
perfil(jogos_digitais, design_visual, 4).
perfil(jogos_digitais, storytelling_narrativa, 3).
perfil(jogos_digitais, fisica_simulacao, 3).
perfil(jogos_digitais, audio_musica, 2).
perfil(jogos_digitais, programacao_python, 2).
perfil(jogos_digitais, documentacao, 1).

perfil(sistemas_embarcados_iot, c_programacao, 5).
perfil(sistemas_embarcados_iot, microcontroladores, 5).
perfil(sistemas_embarcados_iot, tempo_real_rtos, 4).
perfil(sistemas_embarcados_iot, eletronica_basica, 4).
perfil(sistemas_embarcados_iot, redes, 3).
perfil(sistemas_embarcados_iot, hardware_debug, 3).
perfil(sistemas_embarcados_iot, baixo_consumo, 2).
perfil(sistemas_embarcados_iot, seguranca_aplicacoes, 2).
perfil(sistemas_embarcados_iot, documentacao, 1).

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
pergunta(12, 'Voce quer desenvolver aplicativos Android com Kotlin?', mobile_android_kotlin).
pergunta(13, 'Voce quer desenvolver aplicativos iOS com Swift?', mobile_ios_swift).
pergunta(14, 'Voce prefere multiplataforma?', mobile_flutter).
pergunta(15, 'Voce se preocupa com usabilidade em mobile?', usabilidade_mobile).
pergunta(16, 'Voce gosta de integrar APIs REST?', apis_rest).
pergunta(17, 'Voce gosta de escrever testes automatizados?', testes_automatizados).
pergunta(18, 'Voce tem interesse em publicar aplicativos nas lojas?', publicacao_lojas).
pergunta(19, 'Voce se sente confortavel em manter documentacao?', documentacao).
pergunta(20, 'Voce curte pipelines de CI/CD?', ci_cd).
pergunta(21, 'Voce gosta de conteinerizar com Docker?', docker).
pergunta(22, 'Voce tem interesse em orquestracao com Kubernetes?', kubernetes).
pergunta(23, 'Voce curte automatizar com scripts (bash/py)?', automacao_scripts).
pergunta(24, 'Voce gosta de monitorar logs/metricas/traces?', monitoramento_observabilidade).
pergunta(25, 'Voce tem interesse em seguranca de aplicacoes?', seguranca_aplicacoes).
pergunta(26, 'Voce se interessa por custos de cloud?', custo_finops).
pergunta(27, 'Voce curte construir pipelines ETL/ELT?', etl).
pergunta(28, 'Voce se interessa por processamento de streams?', processamento_stream).
pergunta(29, 'Voce tem curiosidade por Hadoop ou Spark?', big_data_hadoop).
pergunta(30, 'Voce gosta de SQL?', sql).
pergunta(31, 'Voce se interessa por orquestracao?', orquestracao_airflow).
pergunta(32, 'Voce se preocupa com qualidade de dados?', qualidade_dados).
pergunta(33, 'Voce se interessa por governanca de dados?', governanca_dados).
pergunta(34, 'Voce gosta de colaborar e comunicar no time?', comunicacao_time).
pergunta(35, 'Voce curte padroes de projeto (Design Patterns)?', design_patterns).
pergunta(36, 'Voce gosta de modelar o dominio do negocio?', modelagem_dominio).
pergunta(37, 'Voce se interessa por microservicos?', arquitetura_microservicos).
pergunta(38, 'Voce se preocupa com performance e escalabilidade?', performance_escalabilidade).
pergunta(39, 'Voce gosta de analisar requisitos de software?', requisitos_engenharia).
pergunta(40, 'Voce curte programar em C/C++ para jogos?', programacao_cplusplus).
pergunta(41, 'Voce quer trabalhar com Unity?', game_engines_unity).
pergunta(42, 'Voce gosta de matematica para graficos?', matematica_grafica).
pergunta(43, 'Voce curte narrativa e roteiro de jogos?', storytelling_narrativa).
pergunta(44, 'Voce se interessa por fisica e simulacao em jogos?', fisica_simulacao).
pergunta(45, 'Voce gosta de audio e musica para jogos?', audio_musica).
pergunta(46, 'Voce curte programar em C para hardware?', c_programacao).
pergunta(47, 'Voce quer trabalhar com microcontroladores?', microcontroladores).
pergunta(48, 'Voce se interessa por sistemas de tempo real (RTOS)?', tempo_real_rtos).
pergunta(49, 'Voce tem afinidade com eletronica basica?', eletronica_basica).
pergunta(50, 'Voce gosta de depurar hardware (osciloscopio/JTAG)?', hardware_debug).
pergunta(51, 'Voce se interessa por dispositivos de baixo consumo?', baixo_consumo).
pergunta(52, 'Voce se interessa por etica em IA?', etica_ia).
pergunta(53, 'Voce se preocupa com acessibilidade na web?', acessibilidade_web).
pergunta(54, 'Voce quer trabalhar com criptografia?', criptografia).
pergunta(55, 'Voce tem interesse em auditoria e logs?', auditoria_logs).

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

% Função para retornar as trilhas com maior pontuação
recomenda_maiores(N, TopN) :-
    recomenda(Ranking),
    length(TopN, N),
    append(TopN, _, Ranking).

% Exibe o ranking de forma organizada
exibe_resultado([]).
exibe_resultado([pontuacao(Trilha, Pontuacao, Caracteristicas)|T]) :-
    trilha(Trilha, Descricao),
    format('~nTrilha: ~w (~w pontos)~nDescricao: ~w~nCaracterísticas: ~w~n',
           [Trilha, Pontuacao, Descricao, Caracteristicas]),
    exibe_resultado(T).


% Limpa as respostas antes de fazer as perguntas
limpar_respostas :-
    retractall(resposta(_, _)).

% Percorre todas as perguntas
faz_perguntas :-
    forall(pergunta(Id, Texto, _),
           perguntar(Id, Texto)).

% Pergunta individual
perguntar(Id, Texto) :-
    format('~w~n', [Texto]),
    read_line_to_string(user_input, S),
    ( sub_string(S, 0, 1, _, "s") ; sub_string(S, 0, 1, _, "S") -> Resp = s
    ; sub_string(S, 0, 1, _, "n") ; sub_string(S, 0, 1, _, "N") -> Resp = n
    ; format('Entrada invalida. Responda com s/n.~n', []),
      !, perguntar(Id, Texto)
    ),
    retractall(resposta(Id, _)),
    assertz(resposta(Id, Resp)).

% Função para mostrar todos os resultados caso o usuário queira saber
mostrar_completo(Opcao) :-
    ( sub_string(Opcao, 0, 1, _, "s") ; sub_string(Opcao, 0, 1, _, "S") ->
        recomenda(Ranking),
        format("~n=== Ranking Completo ===~n", []),
        exibe_resultado(Ranking)
    ; sub_string(Opcao, 0, 1, _, "n") ; sub_string(Opcao, 0, 1, _, "N") ->
        format("~nObrigado por usar o sistema de recomendação!~n", [])
    ; format("Entrada inválida. Digite apenas 's' ou 'n'.~n", []),
      read_line_to_string(user_input, NovaOpcao),
      mostrar_completo(NovaOpcao)
    ).

iniciar :-
    limpar_respostas,
    faz_perguntas,
    recomenda_maiores(3, Top3),
    format("~n=== Top 3 Trilhas Recomendadas ===~n", []),
    exibe_resultado(Top3),
    format("~nDeseja ver o ranking completo? (s/n):~n", []),
    read_line_to_string(user_input, Opcao),
    mostrar_completo(Opcao).

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
