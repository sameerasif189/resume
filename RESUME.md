# Sameer Asif

AI / ML Engineer | LLMs · Computer Vision · Generative AI · Backend

Islamabad, Pakistan | +92 323 5151542 | [sameerasif189@gmail.com](mailto:sameerasif189@gmail.com) | [GitHub](https://github.com/sameerasif189) | [LinkedIn](https://www.linkedin.com/in/sameer-asif-32113535b/)

## SUMMARY

AI/ML engineer and final-year BS Artificial Intelligence student at FAST-NUCES, currently building production machine-learning systems at Infigo Solutions. I work end-to-end across the ML lifecycle: data collection and pipelines, model architecture and training in PyTorch, and deployment behind FastAPI services and vector databases. My experience spans large language models and retrieval-augmented generation, computer vision, generative models such as GANs and U-Nets, and speech processing, with a track record of taking research ideas and prototypes through to deployed, real-time systems.

## TECHNICAL SKILLS

- **Languages:** Python, SQL, C/C++, JavaScript, TypeScript, Bash
- **Machine Learning:** PyTorch, Hugging Face Transformers, CNNs, GANs, U-Net, EfficientNet, multi-task learning, self-attention, ONNX
- **LLMs & NLP:** retrieval-augmented generation (RAG), pgvector, embeddings, semantic search, prompt engineering, LoRA/SFT, language modeling
- **Computer Vision & Speech:** OpenCV, timm, object detection, facial-expression recognition, faster-whisper (STT), Spark-TTS, librosa
- **Backend & Data:** FastAPI, REST APIs, WebSockets, async Python, Playwright, SQL Server, PostgreSQL/pgvector, SQLAlchemy, pandas, NumPy
- **Frontend & Tools:** React, Vite, Git, Docker, Linux/WSL, Vercel, CUDA

## EXPERIENCE

### Junior AI Engineer
Infigo Solutions, Islamabad | July 2025 – Present

- Lead developer of the company's AI customer-support assistant, a multi-channel application (website, WhatsApp, and Slack) built with FastAPI and PostgreSQL (pgvector) and deployed on Vercel, now running live on infigosolutions.com.
- Designed and built a retrieval-augmented generation (RAG) pipeline: document chunking, embeddings stored in pgvector, cosine top-k search with a full-text-search fallback, and ERP context (customers, orders, invoices) injected into model prompts.
- Added cost and safety controls around a Groq-hosted Llama 3.1 8B model, including answer caching, token-budget tracking, retrieval limits, and escalation rules, to keep responses accurate and within budget.
- Built an embeddable React chat widget and a public chat API, and authored the database migrations, synthetic seed data, and smoke tests used across releases.

### AI Engineering Intern
Infigo Solutions, Islamabad | June 2025 – July 2025

- Built an asynchronous web-scraping pipeline (Clutch, Wellfound) that collected company and contact data at scale and loaded it into a normalized SQL Server database used by the sales team for lead generation.
- Added anti-bot handling, resumable progress tracking, and regex-based extraction of emails, phone numbers, and LinkedIn profiles to keep long scraping runs reliable.
- Developed the first prototype of the support chatbot with its initial deployment and authentication flow, which led to a full-time offer.

## PROJECTS

### Adaptive Psychological Horror Game — Final Year Project
[GitHub](https://github.com/sameerasif189/fyp-iteration-2) · PyTorch, ONNX, Hugging Face, Unity

- Trained facial-expression recognition models across seven public datasets (DFEW, FERV39k, FER2013, RAF-DB, CK+, Aff-Wild2, RAVDESS) and mapped them to a four-class stress schema, fusing video, audio, and heart-rate signals into a single real-time stress classifier consumed by a Unity game.
- Designed a stress-conditioned Fusion Generator (a ~500K-parameter MLP with sub-millisecond GPU inference) that outputs 30 parameters driving the game's audio, DSP, lighting, camera, and entity behaviour.
- Trained a conditional WaveGAN (~2M parameters) for procedural horror audio and a conditional U-Net (~3M parameters, 256×256) for real-time PBR texture corruption, exporting every model to ONNX for Unity Barracuda/Sentis.

### Voice-Cloning Conversational Agent
[GitHub](https://github.com/sameerasif189/voice-agent) · FastAPI, PyTorch, faster-whisper, Spark-TTS, React

- Built an end-to-end real-time voice assistant: faster-whisper speech-to-text on CUDA, a Groq-hosted Llama 3.1 8B model for responses, and Spark-TTS cloned-voice synthesis, all fitting within 16 GB of VRAM through warmup and on-demand model unloading.
- Developed a FastAPI backend with WebSocket audio streaming and a voice-registry REST API, plus a React/Vite frontend with consent-gated voice upload, automatic transcription, and live playback.

### Hybrid Wildlife Detection
[GitHub](https://github.com/sameerasif189/hybrid-wildlife-detection) · PyTorch, timm, albumentations, OpenCV

- Built a 4.5M-parameter detector combining techniques from three recent research papers: an EfficientNet-B0 backbone with multi-scale feature fusion, spatial-attention gating, and three task heads for 21-class classification, bounding-box regression, and objectness scoring.
- Trained on the Missouri Camera Traps dataset with a stratified 70/15/15 split, an albumentations augmentation pipeline, gradient accumulation, OneCycle scheduling, and early stopping, tuned to fit a 6 GB GPU.

### Transformer and RAG from Scratch
[GitHub](https://github.com/sameerasif189/transformer-rag-from-scratch) · PyTorch, NumPy

- Implemented a multi-task Transformer encoder from scratch in PyTorch for Amazon review understanding, reaching 82% sentiment accuracy and 99.7% derived-feature accuracy on a 7,497-sample test set.
- Built a Transformer decoder from scratch for explanation generation with retrieval-augmented context (top-3 cosine nearest neighbours) and analysed the retrieval versus no-retrieval perplexity trade-off.

### Other Projects
- **[SIP — Restaurant Ordering App](https://github.com/sameerasif189/sip-restaurant-app):** React/Vite web app for QR scan-to-order dining, with category-based menu browsing, cart, and a full checkout flow, deployed on Vercel.
- **[BBC Urdu Text Generator](https://github.com/sameerasif189/urdu-ngram-text-generator):** from-scratch n-gram language models with Laplace smoothing and a right-to-left Streamlit interface, evaluated with perplexity.
- **[Sentinel Trading Bot](https://github.com/sameerasif189/sentinel-trading-bot):** automated Binance trading bot with an adaptive strategy that learns from past trades and uses Fear & Greed and Reddit sentiment signals.

## EDUCATION

### BS Artificial Intelligence
FAST-NUCES, Islamabad | 2022 – 2026 (Expected)

Relevant coursework: Deep Learning, Natural Language Processing, Computer Vision, Generative AI, Databases, Software Engineering, Data Structures & Algorithms, Probability & Statistics.

### Cambridge A Levels and O Levels
Beaconhouse School System | 2017 – 2022
