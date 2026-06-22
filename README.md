# Sameer Asif — Resume

ATS-friendly resume for **Sameer Asif** (AI Engineer, FAST-NUCES Islamabad).

## Files

- [RESUME.md](RESUME.md) — single source of truth, hand-editable Markdown.
- [Sameer_Asif_Resume.pdf](Sameer_Asif_Resume.pdf) — printable, text-selectable PDF (recommended for submissions).
- [Sameer_Asif_Resume.docx](Sameer_Asif_Resume.docx) — Microsoft Word format (most universally ATS-safe).
- [Sameer_Asif_Resume.txt](Sameer_Asif_Resume.txt) — plain-text dump for strict ATS portals.
- [Sameer_Asif_Resume.html](Sameer_Asif_Resume.html) — browser preview.
- [style.css](style.css) — print stylesheet used by the PDF.
- [build.ps1](build.ps1) — one-shot regenerator: `md → pdf / docx / txt / html`.

## Regenerate the artifacts

After editing `RESUME.md`, rebuild every output with:

```powershell
powershell -ExecutionPolicy Bypass -File build.ps1
```

First-time prerequisites (run once):

```powershell
winget install --id JohnMacFarlane.Pandoc -e
winget install --id wkhtmltopdf.wkhtmltox -e
```

## Contact

- Email: [sameerasif189@gmail.com](mailto:sameerasif189@gmail.com)
- Phone: +92 323 5151542
- GitHub: [github.com/sameerasif189](https://github.com/sameerasif189)
- LinkedIn: [linkedin.com/in/sameer-asif-32113535b](https://www.linkedin.com/in/sameer-asif-32113535b/)
