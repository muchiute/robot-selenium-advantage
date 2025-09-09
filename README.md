# Robot + Selenium Testes Automatizados

Este projeto contém testes automatizados utilizando Robot Framework e Selenium para testar funcionalidades de API e interfaces web.

## 🧪 Funcionalidades

### API
- Cadastro de Novo Usuário (usado como massa de dados para cenários web)

### Web
CT001 – Registro de Usuário
- Cadastro de um novo usuário pela interface web.

CT002 – Login de Usuário
- Login com usuário já cadastrado (massa da API ou CT001).

CT003 – Buscar Produto
- Pesquisa de produto na barra de busca (exemplo: Laptop).

CT004 – Compra de Produto (Safepay)
- Compra de produto utilizando método de pagamento Safepay.

CT005 – Compra de Produto (MasterCard)
- Compra de produto utilizando método de pagamento MasterCard.

## ⚙️ Tecnologias Utilizadas
- **Robot Framework**: Framework de automação de testes baseado em palavras-chave.
- **SeleniumLibrary**: Biblioteca do Robot Framework para automação de navegadores.
- **Selenium WebDriver**: Ferramenta para controlar navegadores de forma programática.
- **Python**: Linguagem de programação utilizada para scripts e automação.
- **VSCode**: Editor de código recomendado para desenvolvimento.

## 🛠️ Pré-requisitos
Antes de começar, você precisará ter instalado em sua máquina as seguintes ferramentas:

- [Python 3.13.6](https://www.python.org/downloads/) (para gerenciamento de dependências)
- [VSCode](https://code.visualstudio.com/) (opcional, mas recomendado)
- [Driver do Navegador - ChromeDriver](https://developer.chrome.com/docs/chromedriver/downloads?hl=pt-br)

## 📦 Instalação

- `pip install -r requirements.txt` (dentro da pasta do projeto na raiz)

## Comandos para execução dos testes

Para execução normal dos testes (dentro da pasta do projeto na raiz) - SEM TAG
- [Exemplo]: python -m robot -d reports ./testcases/<modulo>/<funcionalidade>

Para execução via tags
- [Exemplo]: python -m robot -d reports --include (TAG) .

Para executar um cenário específico e gerar o relatório `log.html`
- [Exemplo]: robot --test "Cenario: Comprar produto Laptop na WEB " -d reports .\testCases\testesWeb\advantageWeb.robot