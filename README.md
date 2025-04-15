# Projeto Integrador V - Apoio Decisório aos Negócios

Este repositório contém a implementação do projeto integrador do curso de Tecnologia em Banco de Dados, cujo objetivo é utilizar projeções populacionais do IBGE até 2070 para embasar a tomada de decisão estratégica em diversos setores da economia.

## 📊 Objetivo do Projeto

A proposta é organizar e analisar os dados demográficos por meio de processos de ETL, segmentando a população em faixas etárias estratégicas conforme padrões de consumo e ciclos de vida. A análise visa apoiar setores como saúde, turismo, previdência, tecnologia assistiva e consumo em geral.

---

## 🛠 Tecnologias Utilizadas

- **MySQL** – Banco de dados relacional para armazenamento e análise dos dados populacionais.
- **Power BI / Metabase / Tableau (opcional)** – Ferramentas para construção de dashboards gerenciais.
- **Python (pandas, matplotlib, seaborn)** – Scripts auxiliares de análise e visualização (ETL).
- **Excel / CSV** – Dados brutos e processados.
- **OLAP (Online Analytical Processing)** – Consultas analíticas multidimensionais sobre o banco de dados.

---

## 📁 Estrutura do Repositório

```bash
.
├── README.md                # Este documento
├── docs/                    # Evidências e gráficos OLAP
├── data/                    # Base de dados original (Excel/CSV)
├── ddl/                     # Scripts de criação das tabelas (DDL)
├── dml/                     # Scripts de carga de dados (DML)
└── olap/                    # Consultas OLAP em SQL
