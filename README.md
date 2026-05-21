# AI Finance Assistant 🤖💰

An AI-powered Telegram finance assistant that automatically scans receipts, extracts financial data using OCR, stores invoices securely in the cloud, and generates real-time spending analytics.

Built with modern automation architecture using n8n, Supabase, AI Agents, OCR recognition, and Telegram Bot integration.

---

# 🚀 Overview

Managing paper receipts manually is slow, inefficient, and error-prone.  
This project automates the entire expense tracking workflow directly through Telegram.

Simply send a receipt photo to the bot and the system will:

- 📸 Detect and process the receipt
- 🔍 Extract invoice data using OCR AI
- ☁️ Backup the receipt image to Google Drive
- 🗄️ Store structured financial data in Supabase
- 📊 Generate real-time spending reports
- 🤖 Respond with AI-generated financial summaries

No spreadsheets. No manual typing.  
Just automated financial tracking powered by AI and cloud workflows.

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
```

---

# 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| n8n | Workflow Automation |
| Telegram Bot API | User Interface |
| Base64.ai | OCR Receipt Recognition |
| OpenRouter | AI Language Model Access |
| Gemini Flash Lite | AI Financial Assistant |
| Supabase | Database Storage |
| Google Drive API | Receipt Backup |
| JavaScript | Data Cleanup & Processing |

---

# 📸 Workflow Screenshot

## Main Workflow


<img width="1506" height="658" alt="Screenshot 2026-05-21 115519" src="https://github.com/user-attachments/assets/7fc05bf2-8e04-4f12-969b-a7c4a3419f0b" />



---

# 📱 Telegram Bot Demo

## Receipt Upload
- User sends receipt image
- OCR extracts invoice data
- Data stored automatically

## Financial Analytics
- Monthly reports
- Spending summaries
- Recent transactions

---

# 📱 Telegram Bot Preview

## Smart Receipt Registration

Users can upload a receipt photo directly through Telegram.  
The system automatically extracts financial data using OCR AI and stores it securely in the cloud.

<img width="450" height="640" alt="7B72FDF1-7913-4AC9-969C-F5478D2186C9" src="https://github.com/user-attachments/assets/ac49043f-ffc3-48f3-8b69-68606669691c" />


---

## Real-Time Financial Analytics

The AI assistant generates monthly spending summaries and recent transaction reports directly from Supabase.

<img width="450" height="640" alt="01DD8072-7D5E-43C1-982D-B40C6213BC4C" src="https://github.com/user-attachments/assets/3b4c1c4e-4e7d-48e8-bb1c-2d095a8fa384" />

---

# 🔮 Future Improvements

Planned upgrades and future development roadmap:

- Smart expense category classification
- Interactive spending charts & dashboards
- Currency conversion support
- Monthly budget alerts
- Advanced duplicate invoice detection
- Multi-language support
- PDF financial report export
- Mobile dashboard interface
- AI-based spending insights
- OCR confidence scoring system

---

# 💡 Why This Project Matters

This project demonstrates practical implementation of:

- AI workflow orchestration
- OCR document processing
- Cloud automation
- REST API integration
- Database architecture
- Conversational AI systems
- Real-world business automation

The system is designed as a production-oriented portfolio project focused on intelligent financial tracking and modern automation workflows.

---

# 📜 License

MIT License

---

# 👨‍💻 Author

Created by Ehsan  
Fachinformatiker für Systemintegration 🇩🇪

Exploring the intersection of AI automation, 
cloud workflows, and intelligent financial systems.
