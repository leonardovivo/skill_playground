# 🛠️ Skill Playground

Este projeto é um aplicativo Flutter desenvolvido como desafio técnico, com o objetivo de demonstrar domínio em diversos tópicos essenciais do ecossistema Flutter, incluindo navegação, gerenciamento de estado, renderização customizada, performance, injeção de dependências, etc.

---

## 🎯 Objetivo

Criar um aplicativo com uma tela inicial contendo cards. Cada card representa um tópico técnico, e ao ser clicado, direciona o usuário para uma tela que demonstra aquela habilidade.

---

## 📱 Funcionalidades implementadas

| Tópico                        | Status |
|------------------------------|--------|
| 🎨 CustomPainter Basics       | ✅     |
| 🧭 Navigator 2.0              | ✅     |
| ⚙️ Bloc State Management      | 🔜     |
| 🔌 Platform Channels          | 🔜     |
| 🚀 Performance & Repaints     | 🔜     |
| 🧵 Async Isolates             | 🔜     |
| 🎬 AnimationController        | 🔜     |
| 🌊 StreamBuilder c/ Erros     | 🔜     |
| 🧩 Custom Slivers             | 🔜     |
| 📦 Dependency Injection       | ✅     |

---

## 📦 Pacotes utilizados

flutter_bloc – gerenciamento de estado reativo

get_it – injeção de dependência

just_audio – (opcional) exemplo de uso com Platform Channels

flutter_test – para testes unitários e de widgets

---


## 🧱 Estrutura do projeto

```bash
lib/
├── main.dart
├── locator.dart
├── navigation/                  # RouterDelegate e Parser
├── screens/                     # Telas por tópico
│   ├── home/
│   ├── custom_painter/
│   ├── bloc/
│   └── ... etc
├── services/                    # Serviços registrados no get_it
├── blocs/                       # Blocs usados nas telas
├── widgets/                     # Componentes reutilizáveis
test/                            # Testes unitários e de widget
