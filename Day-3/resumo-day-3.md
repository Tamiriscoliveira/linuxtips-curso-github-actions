## O QUE SÃO TRIGGERS
<p>
Triggers no GitHub Actions são eventos que disparam a execução de um workflow automaticamente ou manualmente. Eles permitem integrar a automação ao ciclo de desenvolvimento. Abaixo, uma explicação objetiva de cada trigger mencionado:
branch_protection_rule:
Dispara quando regras de proteção de branch são criadas, editadas ou removidas. Útil para monitorar mudanças que impactam políticas de merge e acesso a branches.
<p>
create:
Aciona o workflow quando um branch ou uma tag é criado no repositório. Ajuda a automatizar processos como versionamento ou configuração inicial de branches.
<p>
delete:
Executa quando um branch ou tag é excluído. Pode ser usado para limpar recursos associados ou notificar equipes sobre remoções.
<p>
deployment:
Dispara quando um deployment é criado usando as APIs do GitHub. Indicado para integrar ações específicas a processos de deployment.
<p>
discussion:
Executa quando uma discussão no repositório é criada, editada, deletada ou recebe um comentário. Útil para automações ligadas à interação da comunidade.
<p>
gollum:
Dispara quando páginas do Wiki do repositório são criadas ou alteradas. Ajuda a manter ações sincronizadas com atualizações de documentação interna.
<p>
issues:
Aciona o workflow em eventos de issues: abertura, edição, fechamento, reabertura, entre outros. Ideal para integrações com sistemas de gerenciamento de tarefas.
<p>
pull_request:
Executa em eventos relacionados a pull requests, como abertura, sincronização, revisão e merge. É um dos triggers mais usados para CI/CD.
<p>
push:
Dispara quando há envio de commits para um branch ou tag. Permite automatizar builds, testes e deploys a cada atualização no repositório.
<p>
schedule:
Permite rodar workflows em horários definidos usando expressões cron. Usado para tarefas periódicas, como limpeza ou backups.
<p>
status:
Aciona o workflow quando o status de uma verificação de commit muda. Geralmente ligado a checks externos integrados ao GitHub.
<p>
workflow_dispatch:
Habilita a execução manual de workflows via botão na interface do GitHub. Pode aceitar inputs personalizados na inicialização.
<p>
workflow_call:
Permite que um workflow seja chamado por outro, passando parâmetros e outputs. Facilita a reutilização de lógicas entre diferentes workflows.
<p>
workflow_run:
Dispara após a conclusão de outro workflow, seja com sucesso ou falha. Útil para criar pipelines compostas e encadeadas de automação.