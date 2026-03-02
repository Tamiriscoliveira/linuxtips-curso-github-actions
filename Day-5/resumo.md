RESUMO DAY 5
DEPENDÊNCIAS E ORDEM DE EXECUÇÃO
No GitHub Actions, é possível controlar a ordem de execução dos workflows por meio de dependências entre steps e jobs, criando cadeias lógicas que garantem que determinadas tarefas só sejam executadas após o sucesso de outras. Isso é feito usando identificadores e o atributo needs, que define claramente essas relações. Para a troca de informações entre etapas, é utilizado o contexto de output, onde dados gerados em um step ou job podem ser armazenados via GITHUB_OUTPUT e reutilizados posteriormente em outras partes do fluxo, promovendo automações mais dinâmicas e inteligentes.
CONDICIONAIS
A instrução if no GitHub Actions permite controlar a execução de steps com base em condições específicas, como o resultado de etapas anteriores, valores de variáveis ou contextos do workflow. Isso torna os pipelines mais inteligentes e eficientes, evitando execuções desnecessárias e possibilitando diferentes comportamentos dependendo do ambiente, branch ou saída de jobs anteriores. Essa lógica condicional é essencial para criar fluxos flexíveis e seguros dentro da automação.
WORKFLOWS REUTILIZÁVEIS E AÇÕES COMPOSTAS
No GitHub Actions, evitar duplicação é fundamental para manter os workflows limpos, reutilizáveis e fáceis de manter. Para isso, existem duas abordagens principais, workflows reutilizáveis e ações compostas:

Workflows reutilizáveis são recomendados quando você quer reaproveitar conjuntos inteiros de jobs entre diferentes repositórios ou pipelines. Com o workflow_call, é possível centralizar a lógica de build, testes ou deploy em um único lugar e reutilizá-la com consistência.

Ações compostas (composite actions) são mais indicadas quando você precisa agrupar múltiplos steps dentro de um mesmo workflow. Elas são úteis para tarefas repetitivas e curtas, como configurações de ambiente. Porém, na prática, geralmente usamos composites prontos criados por comunidades ou empresas conhecidas, como a ação oficial do Trivy (scanner de vulnerabilidades).

Além disso, quando nenhuma solução pronta atende exatamente ao seu caso, você pode criar ações personalizadas em shell, JavaScript ou Docker. Essa abordagem permite encapsular lógicas específicas da sua aplicação e facilita a padronização dos pipelines. Usar essas estratégias reduz retrabalho, melhora a legibilidade dos workflows e facilita a manutenção em ambientes com múltiplos repositórios.


COMPOSITE ACTIONS E AÇÕES PERSONALIZADAS

CRIAR UMA AÇÃO COMPOSTA: https://docs.github.com/pt/actions/tutorials/create-actions/create-a-composite-action

CRIAR UMA AÇÃO DE CONTÊINER DO DOCKER: https://docs.github.com/pt/actions/tutorials/use-containerized-services/create-a-docker-container-action

CRIAR UMA AÇÃO DE JAVASCRIPT: https://docs.github.com/pt/actions/tutorials/create-actions/create-a-javascript-action
