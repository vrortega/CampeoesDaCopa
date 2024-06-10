<div align="center"><h1>Campeões da Copa ⚽</h1></div>

## 📖 Sobre o Projeto
Campeões da Copa é um aplicativo iOS desenvolvido em Swift que exibe informações detalhadas sobre os campeonatos mundiais de futebol. Ele apresenta dados sobre os vencedores e vice-campeões, além de detalhes dos jogos de cada edição da Copa do Mundo.

## 📂 Estrutura de Pastas
A estrutura de pastas do projeto está organizada da seguinte forma:

```css
CampeoesDaCopa/
│
├── Models/
│   ├── WorldCup.swift
│
├── Controllers/
│   ├── GamesTableViewCell.swift
│   ├── WorldCupTableViewCell.swift
│   ├── WinnersTableViewController.swift
│   └── WorldCupViewController.swift
│
└── Views/
    ├── Main.storyboard
    └── LaunchScreen.storyboard
```

## 🏗️ Estrutura do Projeto

### Models
- WorldCup.swift: Define a estrutura de dados para a Copa do Mundo, incluindo o ano, país, vencedor, vice-campeão, pontuações e partidas.

### Controllers
- GamesTableViewCell.swift: Controlador para as células da tabela de jogos, responsável por configurar as visualizações de cada jogo.
- WorldCupTableViewCell.swift: Controlador para as células da tabela da Copa do Mundo, responsável por configurar as visualizações de cada Copa do Mundo.
- WinnersTableViewController.swift: Controlador principal que carrega e exibe a lista de vencedores da Copa do Mundo.
- WorldCupViewController.swift: Controlador que exibe os detalhes de uma Copa do Mundo selecionada.

## 🚀 Como Rodar
Para rodar o projeto Campeões da Copa no seu ambiente local, siga os passos abaixo:

### Clone o repositório:

```sh
git clone https://github.com/vrortega/CampeoesDaCopa.git
cd CampeoesDaCopa
```

* **Abra o Projeto no Xcode:**

Navegue até o arquivo `CampeoesDaCopa.xcodeproj` e abra-o com o Xcode.

* **Instale as Dependências:**

Se o projeto utilizar CocoaPods, execute `pod install` para instalar as dependências necessárias.

* **Compile e Rode o Projeto:**

Pressione `Cmd + R` ou clique no botão de rodar no Xcode.

# 📖 Referência
Projeto desenvolvido como parte do <a href="https://www.udemy.com/course/curso-completo-de-desenvolvimento-ios11swift4" target="_blank">
curso de desenvolvimento iOS, do Desenvolvedor Eric Alves Brito</a>.

