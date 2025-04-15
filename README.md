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
```

---

## 🧩 Detalhamento Técnico

### 🔄 Processo ETL

- **Extração**: Dados coletados do IBGE (projeções populacionais entre 2000 e 2070), estruturados em planilhas Excel.
- **Transformação**: Dados tratados, padronizados e reorganizados em faixas etárias adaptadas aos ciclos de vida.
- **Carga**: Inserção dos dados em banco de dados MySQL para posterior análise e uso em ferramentas de BI.

---

## 📦 Modelagem de Dados

O banco de dados está estruturado com base em uma tabela principal de projeções populacionais, contendo os campos:

- `ano`  
- `faixa_etaria`  
- `sexo`  
- `regiao`  
- `populacao_estimativa`

---

## 📈 Operações OLAP

As consultas OLAP estão disponíveis no diretório `/olap` e cobrem:

- Total da população por região e década.
- Comparações entre grupos etários (por exemplo, Jovens vs. 3ª Idade).
- Evolução percentual da população idosa.
- Análises de tendências para setores estratégicos.

Evidências em forma de gráficos e dashboards estão disponíveis na pasta `/docs`.

---

## 📊 Dashboards e Relatórios

Os dashboards gerenciais foram desenvolvidos para facilitar a visualização das projeções e possibilitar o suporte à tomada de decisão. Eles apresentam:

- Projeções por faixa etária até 2070.
- Análises comparativas por década.
- Mapas regionais de envelhecimento da população.

---

## 📎 Fontes e Referências

- IBGE – Projeções Populacionais 2024-2070  
- HSR Specialist Researchers – Segmentação Etária  
- Kimball, R. – *ETL Toolkit*  
- Inmon, W. H. – *Building the Data Warehouse*  
- Projeto Acadêmico SENAC (Grupo 02 - 2025)

---

## 👩‍💻 Autores

- Bruno Giacomelli Chiarello  
- Kelvin Santos de Souza Parreira  
- Natacha Castellão Ramos  
- Stefani Dal Puppo
