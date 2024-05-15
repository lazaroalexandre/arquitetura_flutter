# Arquitetura MVVM no Flutter

Este projeto tem o objetivo de compartilhar meus conhecimentos sobre **arquitetura de software**,  implementando alguns **design patterns** para tornar o desenvolvimento de **código organizado**, **legível** e **adaptável**, utilizando **Flutter** como ferramenta frontend principal.

Nesta branch, são abordados conceitos arquiteturais de View e Controller ao construir um switch que, ao ser tocado, troca o tema da interface no Flutter. Esta parte do projeto é bastante simples, ainda não incluindo o salvamento do estado do tema trocado ao atualizar a página.

## View

As Views são componentes da arquitetura de software responsáveis pela apresentação dos dados. Elas constituem a interface com a qual os usuários interagem. No projeto, a View está representada pela HomePage, que chama o componente switch_widget.

## Controller

Os Controllers são intermediários entre a View e a lógica de negócios. Eles são responsáveis pela mudança imediata de estado ou ação no sistema. No projeto, foi introduzida uma variável booleana observável iniciada como false, que pode mudar seu valor ao acionar o componente de switch, que possui a função que altera o estado do tema criada no controller. 

## Inicialização

Primeiramente, instale todas as configurações do flutter em sua máquina, caso já não esteja instalada. Siga a documentação: https://docs.flutter.dev/get-started/install

Após a configuração, volte ao projeto e execute os seguintes comandos no terminal:

- flutter pub get
- flutter run -d chrome

## Referências

*[Semana do Flutter - Arquitetura | Flutterando TV - Jacob Moura](https://www.youtube.com/watch?v=8lqj7YQ71lo&list=PLlBnICoI-g-c_ZIHqzQjg5E4Re92-qYXn)*