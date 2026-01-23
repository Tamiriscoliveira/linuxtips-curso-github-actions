## RESOLVENDO O DESAFIO
O workflow utilizou o gatilho workflow_dispatch, permitindo sua execução manual. Uma das etapas consistia em validar uma imagem Docker usando 
docker pull $, com variáveis dinâmicas. Foi destacado que o workflow precisa estar na branch principal do projeto para ser considerado válido. 
Além disso, foi configurada a autenticação no Docker Hub, essencial para acessar imagens privadas durante o processo.
<p>
##GIT FLOW
O Git Flow é um modelo de ramificação que organiza o desenvolvimento de forma estruturada. Ele se baseia no uso das branches main e dev: a main 
representa a versão estável do projeto, enquanto a dev concentra os desenvolvimentos em andamento. Além disso, o Git Flow define branches de 
suporte como feature (novas funcionalidades), release (preparação para produção) e hotfix (correções urgentes em produção). Foi destacada a importância 
de não manter muitas branches feature e release ativas por muito tempo, pois isso pode deixar o repositório pesado. O recomendado é excluí-las após o
merge, mantendo a organização do projeto.
<p>
Também vimos o conceito de pull request, ferramenta usada para revisar e integrar código, e que é possível configurar GitHub Actions que são disparados 
automaticamente quando um pull request é criado, permitindo automações como testes e validações.
<p>
##BRANCH PROTECTION RULES E CODEOWNERS
<p>
As Branch Protection Rules são configurações que impedem que mudanças sejam feitas diretamente em branches críticas, como a main, sem antes 
passarem por revisões. Uma das regras mais comuns é "Require a pull request before merging", que obriga que todas as alterações sejam feitas via 
pull request. Junto a isso, pode-se ativar a opção "Require approval of the most recent reviewable push", que exige que a última versão do código 
enviado no pull request seja aprovada por alguém antes de ser integrada, garantindo que nenhuma alteração passe despercebida após a revisão.
<p>

Já o CODEOWNERS é um arquivo especial (sem extensão), normalmente colocado na raiz do repositório ou na pasta .github/. Ele define quem é responsável 
por aprovar alterações em arquivos ou diretórios específicos do projeto. Isso pode ser uma ou mais pessoas, ou até times inteiros definidos no GitHub. 
Ao abrir um pull request que altera arquivos controlados por esse arquivo, os responsáveis definidos automaticamente se tornam revisores obrigatórios.
<p>
É importante saber que não se pode aprovar o próprio pull request se você for um dos codeowners da parte modificada, o que reforça a imparcialidade da 
revisão. Também é essencial prestar atenção na ordem das regras no arquivo CODEOWNERS, já que regras mais específicas que vêm depois podem sobrescrever 
regras mais genéricas anteriores.
Esses mecanismos ajudam a manter um alto padrão de qualidade no código, além de garantir que as áreas críticas do projeto sejam monitoradas e 
aprovadas pelas pessoas certas.