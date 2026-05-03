# UrbanThread Enterprise AI 🚀

**Accelerate social narratives with elite neural synthesis.**

UrbanThread is a high-performance SaaS engine designed for professional content creators, founders, and social media agencies. It transforms raw concepts, long-form articles, or URLs into high-impact, viral threads for **X (Twitter)** and **Instagram Threads**.

![UrbanThread Dashboard](https://images.unsplash.com/photo-1618005182384-a83a8bd57fbe?auto=format&fit=crop&q=80&w=2000)

## 🏗️ Architecture

UrbanThread is built on a modern, scalable stack designed for global performance and security.

- **Frontend**: React 18 + Vite + TailwindCSS + Framer Motion.
- **Neural Engine**: Google Gemini 1.5 Flash (via secure backend proxy).
- **Persistence**: Supabase (PostgreSQL with RLS) for real-time history and draft management.
- **Media Engine**: Google Custom Search API for high-definition contextual visuals.
- **Security**: Server-side proxy architecture to ensure API keys remain invisible to the client.

## 🛡️ Security & Privacy (Enterprise Grade)

- **Invisible API Keys**: Unlike basic web apps, UrbanThread uses a dedicated Express.js proxy. Your Gemini and Google Search keys are stored strictly in the server environment, never exposed to the browser.
- **White-Label Ready**: Designed with a modular architecture that allows for easy rebranding and white-labeling for corporate clients.
- **Data Integrity**: Powered by Supabase Row Level Security (RLS), ensuring that user data is isolated and protected.

## ⚙️ Environment Configuration

To deploy UrbanThread, create a `.env` file in the root directory with the following variables:

```env
# Server Configuration
PORT=3001

# AI & Media (Server-Side Only)
VITE_GOOGLE_API_KEY=your_gemini_key
VITE_GOOGLE_SEARCH_KEY=your_search_key
VITE_GOOGLE_CX=your_search_engine_id

# Persistence (Supabase)
VITE_SUPABASE_URL=https://your-project.supabase.co
VITE_SUPABASE_ANON_KEY=your_anon_key

# Automation
N8N_WEBHOOK_URL=your_n8n_webhook_url
```

## 🚀 Scalability

UrbanThread is built to scale:
1. **Serverless Ready**: The backend proxy can be easily converted to Vercel/Netlify functions.
2. **PostgreSQL Power**: Supabase handles millions of records with ease.
3. **LLM Agility**: The service-oriented architecture allows for quick swapping of LLM models (e.g., from Gemini Flash to Gemini Pro).

## 🛠️ Installation

1. Clone the repository.
2. Install dependencies: `npm install`.
3. Start the secure proxy server: `npm run server` (in a separate terminal).
4. Start the frontend: `npm run dev`.

---

© 2026 **UrbanThread Enterprise AI**. All Rights Reserved. 
*Engineered for the future of social impact.*
