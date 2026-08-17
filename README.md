# Astronomical-Event-Intelligence-and-Classification-Platform
Build an end-to-end data science platform that:
- Ingests astronomical observations and public scientific reports
- Stores and transform data
- Applies machine learning and NLP to classify or prioritize events
- Presents results through an analyst-facing application.

## Project Archetecture
Astronomy APIs / CSV / FITS metadata
                +
Scientific abstracts / observation reports
                ↓
          Python ingestion
                ↓
       Cleaning + validation
                ↓
           PostgreSQL
                ↓
        SQL transformations
                ↓
     ┌──────────┴──────────┐
     ↓                     ↓
Structured ML           NLP Pipeline
     ↓                     ↓
Classification       Entity/topic extraction
     └──────────┬──────────┘
                ↓
             Flask API
                ↓
        Power BI / Web App
