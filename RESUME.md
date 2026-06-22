---
title: "Sameer Asif — Resume"
author: "Sameer Asif"
geometry: margin=0.6in
fontsize: 10.5pt
mainfont: "Calibri"
colorlinks: true
linkcolor: "blue"
urlcolor: "blue"
---

# Sameer Asif

Islamabad, Pakistan · +92 323 5151542 · [sameerasif189@gmail.com](mailto:sameerasif189@gmail.com)
GitHub: [github.com/sameerasif189](https://github.com/sameerasif189) · LinkedIn: [linkedin.com/in/sameer-asif-32113535b](https://www.linkedin.com/in/sameer-asif-32113535b/)

## SUMMARY

AI Engineer and final-year BS Artificial Intelligence student at FAST-NUCES, currently building production-grade LLM systems at Infigo Solutions. Hands-on experience shipping multi-channel RAG agents on serverless infrastructure, training generative models (GANs, U-Nets, Transformers) in PyTorch, deploying ONNX inference into Unity, and building real-time multimodal pipelines for voice cloning, facial expression recognition, and wildlife detection. Comfortable owning the full lifecycle: data ingestion, model architecture, training, inference optimization, FastAPI services, Postgres with pgvector, and React UIs.

## SKILLS

- **Languages**: Python, SQL, C/C++, JavaScript/TypeScript, HTML/CSS, Bash/PowerShell
- **Deep Learning**: PyTorch, Hugging Face Transformers, timm, GANs (conditional WaveGAN), U-Net, EfficientNet, Conditional MLPs, self-attention from scratch, multi-task learning, multi-scale feature fusion, spatial attention
- **LLMs and RAG**: Retrieval-Augmented Generation, embeddings (pgvector cosine and Postgres FTS hybrid), chunking strategies, prompt engineering, intent guardrails, budget and answer caching, fine-tuning concepts (SFT, LoRA, alignment)
- **Model APIs**: Groq (Llama-3.1-8B-Instant), OpenAI-compatible endpoints, Hugging Face Hub, faster-whisper, Spark-TTS, MusicGen
- **Computer Vision**: OpenCV, albumentations, timm backbones, multi-scale detection, COCO datasets, stratified sampling, facial expression recognition (DFEW, FERV39k, FER2013, RAF-DB, CK+, Aff-Wild2, RAVDESS), wildlife camera-trap detection, real-time webcam FX
- **Audio**: librosa, soundfile, faster-whisper STT, Spark-TTS voice cloning, GAN-based audio synthesis, DSP chains (pitch, distortion, reverb, panning)
- **Deployment and Optimization**: ONNX, ONNX Runtime, Unity Barracuda/Sentis, CUDA 12, mixed precision, gradient accumulation, GPU memory budgeting, model warmup and on-demand unload, sub-millisecond inference, Vercel serverless
- **Backend**: FastAPI, REST, WebSockets, async Python, SQLAlchemy, psycopg, Postgres (Neon) with pgvector and FTS, WhatsApp Meta API, Slack Events API
- **Frontend**: React, Vite, embeddable JavaScript widgets, HTML/CSS
- **Tools**: Git/GitHub, Conda/Miniconda, Docker (basic), Linux/WSL, Windows native CUDA, pandas, NumPy, SciPy, matplotlib, seaborn

## EXPERIENCE

**Junior AI Engineer — Infigo Solutions**, Islamabad, Pakistan
*July 2025 – Present*

- Lead AI engineer for the company's customer-support agent platform: a multi-channel (web embed, WhatsApp Meta, Slack) FastAPI application backed by Neon Postgres with pgvector, deployed on Vercel serverless and live on the company marketing site.
- Designed and shipped a hybrid retrieval-augmented generation pipeline — text chunking, OpenAI-compatible embeddings into pgvector, cosine top-k search with Postgres FTS fallback over `kb_articles` and `rag_documents`, and ERP context joins (customers, orders, invoices, support tickets) baked into chat prompts.
- Built cost and safety controls so the production bot stays under budget on free-tier Groq Llama-3.1-8B-Instant: answer caching, intent-policy guardrails, escalation rules, monthly token budget tracker, retrieval cap of 3 chunks, output cap of 180 tokens.
- Wrote the embeddable React chat widget (`infigo-embed.js`) shipped on [infigosolutions.com](https://infigosolutions.com/) and exposed a separate public chat API (`/chat/public`) with site-key auth and ingestion endpoints for KB updates.
- Authored the Neon Postgres migration suite (pgvector RAG, customer memory, KB FTS, chat history, auth-RAG, feed sync) and wrote the synthetic ERP seeder plus smoke-test harness used for local and Vercel UAT.
- **Stack**: Python, FastAPI, async psycopg, Postgres with pgvector, Groq API, Vercel, WhatsApp Cloud API, Slack Events API, React.

**AI Engineering Intern — Infigo Solutions**, Islamabad, Pakistan
*June 2025 – July 2025*

- Built the first end-to-end prototype of what became Infigobot — a FastAPI chat backend wired to a Groq LLM with a curated knowledge-base seed for the company website ([infigobot.vercel.app](https://infigobot.vercel.app)).
- Set up the initial Vercel deployment, the embedded chat widget, environment configuration, and the `/chat/public` site-key flow that the marketing team uses today.
- Wrote the first version of intent guardrails and answer caching that later evolved into the production budget tracker.
- Converted into a full-time Junior AI Engineer position based on this work.

## PROJECTS

**Adaptive Psychological Horror Gaming — Final Year Project** · Team of 3 · Advisor: Dr. Muhammad Nouman Noor
Repos: [fyp-video](https://github.com/sameerasif189/fyp-video) (iteration 1) · [fyp-iteration-2](https://github.com/sameerasif189/fyp-iteration-2) (iteration 2)

- *Iteration 1 — Multimodal Stress Classifier* (my role: video model and Unity integration): trained facial-expression recognition models on 7 datasets (DFEW, FERV39k, FER2013, RAF-DB, CK+, Aff-Wild2, RAVDESS) mapped to a 4-class game schema (calm / stressed / fearful / panic) feeding a unified video + audio + heart-rate stress classifier consumed by a Unity game.
- *Iteration 2 — Generative Horror-Asset Engine*: designed a stress-conditioned Fusion Generator (around 500K-param MLP, sub-millisecond GPU inference) emitting 30 parameters that drive audio, DSP, visual, camera, webcam-feed, and entity sub-systems. Trained a conditional WaveGAN (around 2M params) for horror audio and a conditional U-Net (around 3M params, 256x256, sub-5ms) for PBR texture corruption. Exported all models to ONNX for Unity Barracuda/Sentis. Built a real-time webcam face-distortion pipeline with peripheral-shadow injection and an asset ingestion pipeline (AmbientCG PBR, Freesound API).
- **Stack**: PyTorch, ONNX, Hugging Face Transformers, librosa, OpenCV, pygame, panda3d, Unity.

**Local Voice-Cloning Conversational Agent** · [github.com/sameerasif189/voice-agent](https://github.com/sameerasif189/voice-agent)

- End-to-end voice chat pipeline: faster-whisper STT on CUDA → Groq Llama-3.1-8B → Spark-TTS 0.5B cloned-voice synthesis, fitting 16 GB VRAM with proactive warmup and on-demand unload.
- FastAPI backend with WebSocket streaming and a REST voice-registry API; React/Vite SPA with consent-gated voice upload, auto-transcription endpoint, and live cloned-speech playback.
- One-shot Windows setup script provisions a Miniconda env, clones Spark-TTS, downloads around 2 GB of weights, and configures native CUDA 12.
- **Stack**: Python, FastAPI, WebSockets, PyTorch, faster-whisper, Spark-TTS, Transformers, React, Vite.

**Hybrid Wildlife Detection — Computer Vision Research Synthesis** · [github.com/sameerasif189/hybrid-wildlife-detection](https://github.com/sameerasif189/hybrid-wildlife-detection)

- Designed a single 4.5M-parameter hybrid detector integrating techniques from three 2024 research papers — PyTorch-Wildlife (Beery et al.), YOLOv8 Camera Trap (Subedi et al.), and AI Wildlife Management (Mustafić et al.).
- EfficientNet-B0 backbone (timm) emitting multi-scale features at stages 2, 3, and 4, fused via a 1x1 conv bottleneck and gated by a learned spatial-attention map.
- Three task heads (multi-task learning): 21-class classification, bounding-box regression, and objectness scoring, with a hybrid loss combining cross-entropy, smooth-L1, and BCE.
- Trained on the Missouri Camera Traps dataset (COCO format) with a 70/15/15 stratified split, an albumentations augmentation pipeline (color, blur, weather simulation, geometric, CoarseDropout), gradient accumulation, OneCycle LR, and early stopping — all tuned to fit a 6 GB RTX 3060.
- Comprehensive evaluation: per-class precision/recall/F1, confusion matrix, precision-recall curves, sample predictions with confidence overlays.
- **Stack**: PyTorch, timm, albumentations, OpenCV, NumPy, matplotlib, seaborn, scikit-learn.

**From-Scratch Transformer + RAG for Amazon Review Understanding** · [github.com/sameerasif189/Assignment3-nlp](https://github.com/sameerasif189/Assignment3-nlp)

- Implemented a multi-task Transformer encoder (shared backbone, two heads) from scratch in PyTorch, achieving 82.04% sentiment accuracy and 99.68% derived-feature accuracy on a 7,497-sample Amazon test set (34,981 train / 7,495 val, 30K vocabulary).
- Built a Transformer decoder from scratch for natural-language explanation generation with retrieval-augmented context (top-3 cosine nearest neighbours on encoder embeddings).
- Analyzed and reported the retrieval-vs-no-retrieval perplexity gap (74.95 vs 260.14) and root-caused it to context-length sensitivity in the small decoder.

## EDUCATION

**National University of Computer and Emerging Sciences (FAST-NUCES), Islamabad** — BS Artificial Intelligence, 2022 – 2026 (Expected)
Relevant coursework: Deep Learning, Natural Language Processing, Computer Vision, Generative AI, Databases, Operating Systems, Software Engineering, Data Structures and Algorithms, Probability and Statistics.

**Beaconhouse School System** — Cambridge A Levels, 2020 – 2022

**Beaconhouse School System** — Cambridge O Levels, 2017 – 2020

## ADDITIONAL PROJECTS

- **SIP — React/Vite web app**: [github.com/sameerasif189/SIP](https://github.com/sameerasif189/SIP) · live demo: [sip-sooty.vercel.app](https://sip-sooty.vercel.app)
- **Personal Portfolio (HTML)**: [github.com/sameerasif189/html-portfolio](https://github.com/sameerasif189/html-portfolio)
