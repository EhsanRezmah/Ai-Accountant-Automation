# AI Finance Assistant 🤖💰

An AI-powered Telegram finance assistant that automatically scans receipts, extracts financial data using OCR, stores invoices securely in the cloud, and generates real-time spending analytics.

Built with modern automation architecture using n8n, Supabase, AI Agents, OCR recognition, and Telegram Bot integration.

---

## 🚀 Overview

Managing paper receipts manually is slow, messy, and error-prone.  
This project automates the entire expense tracking workflow through Telegram.

Simply send a receipt photo to the bot and the system will:

- 📸 Detect and process the receipt
- 🔍 Extract invoice data using OCR AI
- ☁️ Backup the receipt image to Google Drive
- 🗄️ Store structured financial data in Supabase
- 📊 Generate real-time spending reports
- 🤖 Respond with AI-generated financial summaries

No manual typing. No spreadsheets.  
Humanity finally found a way to spend money faster *and* document the damage automatically.

---

# ✨ Features

## 📥 Smart Receipt Registration
- Upload receipts directly through Telegram
- Automatic OCR extraction
- Detects:
  - Store name
  - Invoice date
  - Invoice time
  - Invoice number
  - Total amount
  - Currency

---

## 🤖 AI Financial Assistant
Users can interact with the bot naturally inside Telegram.

Supported features:
- Monthly spending reports
- Expense history
- Spending comparisons
- Financial summaries
- Smart receipt guidance

---

## ☁️ Cloud Receipt Backup
Every uploaded receipt is automatically:
- Stored in Google Drive
- Linked to the database
- Preserved for future access

Because humans lose paper receipts approximately 11 seconds after leaving the store.

---

## 📊 Real-Time Analytics
The bot calculates:
- Current month expenses
- Previous month comparison
- Recent transactions
- Spending trends

All directly from Supabase in real time.

---

## 🔒 Multi-User Support
Each Telegram user has isolated financial records using:
- Telegram User ID filtering
- Secure database separation

---

# 🏗️ Architecture

```text
Telegram User
      ↓
Telegram Bot Trigger
      ↓
n8n Workflow Engine
      ↓
OCR Recognition (Base64.ai)
      ↓
JavaScript Data Processing
      ↓
Google Drive Backup
      ↓
Supabase Database Storage
      ↓
AI Financial Analysis
      ↓
Telegram Response
