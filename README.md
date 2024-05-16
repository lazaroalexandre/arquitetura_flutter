# Arquitetura MVVM no Flutter

Este projeto tem o objetivo de compartilhar meus conhecimentos sobre **arquitetura de software**,  implementando alguns **design patterns** para tornar o desenvolvimento de **código organizado**, **legível** e **adaptável**, utilizando **Flutter** como ferramenta frontend principal.

Nesta branch, são abordados conceitos de injeção de dependência com *Modular* envolvida em uma organização de código modularizado, além da inserção de metodologias de design como o Atomic Design e internacionalização para suporte a diferentes idiomas no sistema.

## Modular

O Modular é um pacote de gerenciamento de dependências que fornece uma maneira simples e eficaz de injetar dependências em seu aplicativo, permitindo uma melhor organização e testabilidade do código. Em conjunto com o pacote *flutter_modular*, o cliclo de vida do projeto se torna eficiente, permitindo um suporte robusto para controle de página, incluindo gerenciamento de rotas, e a flexibilidade para trabalhar com módulos. No projeto, o Modular está injetando a depedência dos controllers não só em certas páginas, usando o *LazySingleton* para registrar uma nova instância somente quando solicitado pela primeira vez, como no caso do *UserController*, mas também em todo o sistema, usando o *Singleton* para registrar uma instância imediatamente quando a página é carregada, como no caso do *HomeController*. 

## Atomic Design

O Atomic Design é uma metodologia para a criação de sistemas de design de interfaces de usuário, a fim de organizar componentes de UI em uma hierarquia. No projeto, o atomic design é encontrada na pasta atomic da biblioteca *uikit*, na qual é dividida em *atoms, molecules e organisms*. Além disso, a *uikit* fornece tokens e visual_entity que fazem parte do estilo padronizado do layout do sistema e que são fundamentais para a construção de componentes e widgets.

## Internacionalização

A Internacionalização é o processo de projetar e desenvolver um aplicativo de forma que ele possa ser facilmente adaptado para diferentes idiomas e regiões sem a necessidade de uma engenharia adicional. Em conjunto com o pacote *flutter_localizations*, o idioma do aplicativo é adapte de acordo com a lingua na qual a região que o sistema é acessado. No projeto, a internacionalização é gerenciada no diretório l10n e configurada no AppWidget, com o fito de fornecer traduções nos idiomas português (PT-BR) e inglês (ES-US).

## Inicialização

Primeiramente, instale todas as configurações do flutter em sua máquina, caso já não esteja instalada. Siga a documentação: https://docs.flutter.dev/get-started/install

Após a configuração, volte ao projeto e execute os seguintes comandos no terminal:

- flutter pub get
- flutter gen-l10n 
- flutter run -d chrome

## Configurações da API consumida

 Na maioria das branches, utilizo uma a api do *[MokcAPI](https://mockapi.io/)* como um servidor de dados que é consumido pelo flutter.
 Caso a api que criei não esteja mais em uso ou você esteja recebendo erro de servidor, siga a passo para criar um novo modelo:
    
 *[Clique aqui para assistir o tutorial da API.](https://drive.google.com/file/d/17tk05ef3TeXuKXSsdQmhbiUxGCtkgQm1/view?usp=drive_link)*

## Referências

*[Semana do Flutter - Arquitetura | Flutterando TV - Jacob Moura](https://www.youtube.com/watch?v=8lqj7YQ71lo&list=PLlBnICoI-g-c_ZIHqzQjg5E4Re92-qYXn)*

*[Flutter Modular | Flutterando](https://modular.flutterando.com.br/docs/intro/)*

*[Create Multi Language App | Internationalization & Localization In Flutter - HeyFlutter.com](https://www.youtube.com/watch?v=zugxpAcbe4U)*

*[Flutter — Building a Design System with Atomic Design | Medium - HlfDev](https://medium.com/@hlfdev/building-a-design-system-with-atomic-design-in-flutter-a7a16e28739b)*

*[AULÃO Flutter Web - Responsividade | Flutterando TV - Jacob Moura](https://www.youtube.com/watch?v=UnAuTnR_ZM8)*

*[Tirando dúvidas com Rodrigo Rahman | Instagram - @rodrigorahman.dev](https://www.instagram.com/rodrigorahman.dev?igsh=MWFuYXE1MnNrMW4xMA==)*

*[Estilos de Imagens | Storyset](https://storyset.com/)*
