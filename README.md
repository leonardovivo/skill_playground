# 🛠️ Skill Playground

Este projeto é um aplicativo Flutter desenvolvido como desafio técnico, com o objetivo de demonstrar domínio em diversos tópicos essenciais do ecossistema Flutter, incluindo navegação, gerenciamento de estado, renderização customizada, performance, injeção de dependências, testes, entre outros.

---

## 🎯 Objetivo

Criar um aplicativo com uma tela inicial contendo cards. Cada card representa um tópico técnico, e ao ser clicado, direciona o usuário para uma tela que demonstra aquela habilidade.

---

## 📱 Funcionalidades implementadas

| Tópico                        | Status |
|------------------------------|--------|
| 🎨 CustomPainter Basics       | ✅     |
| 🧭 Navigator 2.0              | ✅     |
| ⚙️ Bloc State Management      | ✅     |
| 🔌 Platform Channels          | ✅     |
| 🚀 Performance & Repaints     | ✅     |
| 🧵 Async Isolates             | ✅     |
| 🎬 AnimationController        | ✅     |
| 🌊 StreamBuilder c/ Erros     | ✅     |
| 🧩 Custom Slivers             | ✅     |
| 📦 Dependency Injection       | ✅     |
| 🧪 Testes (unitários/widgets) | ✅     |

---

## 📦 Pacotes utilizados

- `flutter_bloc`– gerenciamento de estado reativo  
- `get_it`– injeção de dependência  
- `flutter_test`– testes unitários e de widget  

---

## 🧱 Estrutura do projeto

```bash
lib/
├── blocs/                     # Blocs usados nas telas
├── di/                        # Configuração do get_it
├── navigation/                # RouteInformationParser e RouterDelegate
├── screens/                   # Telas por tópico
│   ├── animation/
│   ├── bloc/
│   ├── custom_painter/
│   ├── home/
│   ├── isolates/
│   ├── performance/
│   ├── platform/
│   ├── slivers/
│   ├── stream/
│   └── widgets/               # Widgets reutilizáveis
├── services/                  # Serviços registrados via get_it
└── main.dart

test/
├── blocs/                     # Testes dos blocs
├── screens/                   # Testes de widgets das telas
└── services/                  # Testes dos serviços
```

---

## 🗺️ Guia rápido de cada tela

| Tela | Descrição |
|------|-----------|
| 🏠 **HomeScreen** | Tela inicial com os cards que direcionam para as demais funcionalidades. |
| 🎨 **CustomPainter** | Tela com desenho feito via `CustomPainter`. |
| ⚙️ **Bloc** | Implementação de `flutter_bloc` com contador e `buildWhen` para múltiplos de 5. |
| 🔌 **Platform** | Comunicação com código nativo Android/iOS usando `MethodChannel`. |
| 🚀 **Performance** | Comparativo entre layouts com e sem `RepaintBoundary`. |
| 🧵 **Isolates** | Execução de código pesado fora da thread principal com `compute`. |
| 🎬 **Animation** | Animação com `AnimationController` e `AnimatedBuilder`. |
| 🌊 **Stream** | Exemplo de `StreamBuilder` com simulação de erro. |
| 🧩 **Slivers** | Scroll personalizado com `CustomScrollView` e `SliverList`. |
| 📦 **DI** | Serviço injetado com `get_it` consumido em outras telas (como Bloc). |
| 🧪 **Testes** | Cobertura de testes unitários (Bloc, Service) e de widget (Screens). |
