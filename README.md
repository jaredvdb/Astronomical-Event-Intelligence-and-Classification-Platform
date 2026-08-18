# Astronomical Event Intelligence & Classification Platform
Build an end-to-end data science platform that:
- Ingests astronomical observations and public scientific reports
- Stores and transform data
- Applies machine learning and NLP to classify or prioritize events
- Presents results through an analyst-facing application.

## Platform Architecture

```text
┌───────────────────────────────┐
│ Astronomy APIs / CSV / FITS   │
└───────────────┬───────────────┘
                │
┌───────────────▼───────────────┐
│ Scientific Reports / Abstracts│
└───────────────┬───────────────┘
                │
                ▼
       ┌──────────────────┐
       │ Python Ingestion │
       └────────┬─────────┘
                ▼
       Cleaning & Validation
                │
                ▼
           PostgreSQL
                │
                ▼
       SQL Transformations
                │
        ┌───────┴────────┐
        ▼                ▼
  Structured ML      NLP Pipeline
        │                │
        ▼                ▼
 Classification    Entity / Topic
                    Extraction
        │                │
        └───────┬────────┘
                ▼
            Flask API
                │
                ▼
       Power BI / Web App
```
