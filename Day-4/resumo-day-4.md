RESUMO DAY 4
<p>
SEGURANÇA
<p>
No GitHub Actions, garantir segurança mínima envolve controlar rigorosamente o uso de secrets e permissões. Valores sensíveis nunca devem ser expostos em texto simples nos workflows, o ideal é armazená-los como secrets no GitHub, sempre priorizando secrets em nível de ambiente ou organização, evitando configurar diretamente no repositório.
<p>
O GITHUB_TOKEN deve sempre partir com as permissões mínimas, ajustadas para cada caso de uso. Tokens genéricos ou com escopos amplos aumentam riscos desnecessários. Mesmo com a criptografia oferecida pelo GitHub, é importante lembrar que há possibilidade de exposição, principalmente em cenários de ataques por injeção de scripts em workflows mal planejados.
<p>
Por isso, quando possível, é indicado integrar um operador externo de secrets, como Vault ou AWS Secrets Manager, adicionando uma camada extra de controle e reduzindo a dependência exclusiva do GitHub para armazenar informações sensíveis.
<p>
CONTEXTOS
<p>
Contextos são conjuntos de informações e valores disponíveis automaticamente durante a execução dos workflows. Eles permitem acessar dados sobre o repositório, o evento que disparou o workflow, os usuários envolvidos, entre outros. O contexto mais usado é o github, que traz informações como nome do repositório, branch, commit, autor do evento, e o GITHUB_TOKEN associado. Essas informações são carregadas automaticamente no momento em que o GitHub faz o step de setup do workflow. Não é necessário carregar manualmente: basta referenciar, por exemplo, $.
<p>
Além do contexto github, existem os contextos vars, secrets e env:
Secrets: são valores sensíveis configurados para proteger tokens e chaves. Podem ser definidos no nível do repositório, de ambientes (environments) ou na organização. Para fluxos mais seguros, recomenda-se usar secrets em nível de environment ou organização, pois permitem regras de acesso mais restritas.
<p>
Vars: são variáveis que podem ser definidas da mesma forma, mas não são criptografadas. São ideais para valores não sensíveis, como nomes de buckets ou identificadores.
<p>
Env: permite definir variáveis de ambiente dentro do workflow, de três maneiras:
No topo do arquivo (para todos os jobs e steps).
Dentro de um job específico (válido só para aquele job).
Dentro de um step (válido só para aquele step).
<p>
IMPORTANTE: se quiser usar variáveis de ambiente com o contexto env, é necessário declará-las explicitamente no bloco environment dentro do job ou step onde serão consumidas.
<p>
SCRIPTS
No GitHub Actions, utilizar scripts separados chamados pelos workflows permite uma organização mais clara do YAML, facilita a reutilização entre jobs e proporciona logs específicos por arquivo, o que melhora o rastreio de erros e a manutenção do pipeline. A integração com infraestrutura como código (Terraform) potencializa esse modelo, possibilitando a reutilização de arquivos com simples mudanças de variáveis entre ambientes e garantindo rastreabilidade completa das alterações e dos autores via controle de versionamento.
<p>
Também exploramos os comandos de fluxo de trabalho: instruções especiais que permitem a troca de informações entre jobs e runners, com foco em variáveis de entrada e saída, além da instrução pipefail, essencial para capturar falhas em etapas encadeadas de shell scripts.
<p>
GITHUB PACKAGES E REGISTRY
<p>
O uso do GitHub Packages e do GitHub Container Registry traz vantagens importantes para o controle e distribuição de artefatos. Com eles, é possível versionar e armazenar pacotes (como imagens Docker, bibliotecas e artefatos de build) diretamente no próprio repositório, mantendo tudo centralizado e seguro.
<p>
A autenticação é simplificada com o GITHUB_TOKEN, que permite publicação e acesso aos pacotes sem a necessidade de criar segredos manuais, integrando de forma nativa com os workflows do GitHub Actions. Essa integração otimiza a automação de builds e deploys, garante rastreabilidade, facilita a reutilização de imagens entre ambientes e reduz a dependência de repositórios externos.
<p>

LINKS IMPORTANTES
<p>
CONTEXTOS
 <p> 
USAR SEGREDOS EM GITHUB ACTIONS: https://docs.github.com/pt/actions/how-tos/writing-workflows/choosing-what-your-workflow-does/using-secrets-in-github-actions
<p>
ARMAZENAR INFORMAÇÕES EM VARIÁVEIS: https://docs.github.com/pt/actions/how-tos/writing-workflows/choosing-what-your-workflow-does/store-information-in-variables
<p>
SCRIPTS
AWS PROVIDER: https://registry.terraform.io/providers/hashicorp/aws/latest/docs
<p>
RESOURCE AWS_INSTANCE:
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
<p>
COMANDOS DE FLUXO DE TRABALHO PARA O GITHUB ACTIONS:  https://docs.github.com/pt/actions/reference/workflows-and-actions/workflow-commands
GITHUB PACKAGES: https://docs.github.com/pt/packages/learn-github-packages/introduction-to-github-packages,







































































































































































































































































































































































































































