# AI Accountant - Automated Expense Tracking Bot 📸📊

An enterprise-grade financial automation workflow built with **n8n**, **Supabase (PostgreSQL)**, and **Advanced AI Agents** via OpenRouter. This system seamlessly transforms receipt images into structured, relational financial data and provides intelligent, real-time balance analytics directly over Telegram.

---

## 🛠️ System Architecture

The automation is engineered into two decoupled, high-performance execution pipelines:

### 1. Data Ingestion & Deduplication Pipeline
* **Trigger:** Telegram photo or document upload of a physical receipt.
* **OCR & Feature Extraction:** Multi-stage AI processing extracts operational metadata (`store_name`, `invoice_date`, `total_amount`, `invoice_time`, `currency`).
* **Storage Engine:** Structured data is logged into **Supabase**.
* **Idempotency Guard:** Implements a strict 3-option PostgreSQL unique constraint (`telegram_id`, `invoice_date`, `total_amount`) to automatically catch dual-submits, routing failures to a specialized Telegram warning node instead of breaking the workflow.

### 2. Conversational Analytics Engine (AI Agent)
* Managed via an advanced Conversational AI Agent utilizing OpenRouter models.
* Equipped with a dynamic **Supabase Tool** restricted via individual `telegram_id` scope to ensure total multi-user data privacy.
* Executes real-time mathematical aggregation to output monthly summaries, historical budget metrics, and transaction ledgers.

---

## 🗄️ Database Schema

The project utilizes **Supabase (PostgreSQL)** for transactional integrity. Execute the following schema inside your Supabase SQL Editor to initialize the structural parameters:

```sql
CREATE TABLE receipts (
    id GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    telegram_id TEXT NOT NULL,
    store_name TEXT,
    invoice_number TEXT,
    invoice_date DATE,
    total_amount FLOAT8,
    invoice_time TEXT,
    currency TEXT,
    image_url TEXT
);

-- Active Multi-Column Deduplication Index
ALTER TABLE receipts 
ADD CONSTRAINT unique_user_receipt UNIQUE (telegram_id, invoice_date, total_amount);
