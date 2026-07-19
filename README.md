# AI Red-Team Arsenal 2026

Indice dos forks em **`maux339-cpu`** das ferramentas em alta no X / cena AI red-team.

> **Uso autorizado / pesquisa / laboratorio local apenas.**  
> T3MP3ST, WallBreaker e Strix sao ferramentas ofensivas — so em alvos/modelos com permissao.  
> Licencas upstream: **AGPL-3.0** (T3MP3ST / WallBreaker / OBLITERATUS / Heretic) e **Apache-2.0** (Strix).

## Forks neste GitHub

| Projeto | Nosso repo | Upstream | Funcao |
|---------|------------|----------|--------|
| **T3MP3ST** | https://github.com/maux339-cpu/T3MP3ST | [elder-plinius/T3MP3ST](https://github.com/elder-plinius/T3MP3ST) | Harness multi-agente: Claude Code/Codex/local recon/exploit/report |
| **WallBreaker** | https://github.com/maux339-cpu/wallbreaker | [JailbrokenAI/wallbreaker](https://github.com/JailbrokenAI/wallbreaker) | CLI red-team / jailbreak de LLMs (campanha autonoma) |
| **OBLITERATUS** | https://github.com/maux339-cpu/OBLITERATUS | [elder-plinius/OBLITERATUS](https://github.com/elder-plinius/OBLITERATUS) | Toolkit remocao de refusal / free-speech em modelos |
| **Heretic** | https://github.com/maux339-cpu/heretic | [p-e-w/heretic](https://github.com/p-e-w/heretic) | Abliteration automatica (remove censura de pesos open-source) |
| **Strix** | https://github.com/maux339-cpu/strix | [usestrix/strix](https://github.com/usestrix/strix) | Agentes AI de pentest autonomos (runtime dinamico + PoC) — [strix.ai](https://strix.ai) |

## Clone local (Windows)

```powershell
$Dest = "$env:USERPROFILE\repos\ai-redteam-tools"
New-Item -ItemType Directory -Force -Path $Dest | Out-Null
foreach ($r in @('T3MP3ST','wallbreaker','OBLITERATUS','heretic','strix')) {
  if (-not (Test-Path "$Dest\$r")) {
    gh repo clone "maux339-cpu/$r" "$Dest\$r"
  }
}
```

Ou: `.\scripts\clone-all.ps1`

Pasta padrao: `C:\Users\maux3\repos\ai-redteam-tools\`

## Atualizar forks a partir do upstream

```powershell
gh repo sync maux339-cpu/T3MP3ST
gh repo sync maux339-cpu/wallbreaker
gh repo sync maux339-cpu/OBLITERATUS
gh repo sync maux339-cpu/heretic
gh repo sync maux339-cpu/strix
```

## Quick refs (upstream README)

### T3MP3ST
```bash
npm install && npm run server   # War Room :3333
# Ollama: TEMPEST_LOCAL_BASE_URL + TEMPEST_LOCAL_MODEL
```

### WallBreaker
```bash
pip install -e ".[dev]"
cp config.example.toml config.toml
wallbreaker check && wallbreaker
```

### Strix
```bash
# Install: https://docs.strix.ai/
curl -sSL https://strix.ai/install | bash
export STRIX_LLM="openai/gpt-4o"   # ou outro provider suportado
export LLM_API_KEY="your-api-key"
strix --target http://localhost:3000
```
Site/docs: https://strix.ai · https://docs.strix.ai/

### Heretic / OBLITERATUS
Ver README de cada repo (pipeline de abliteration / liberacao de pesos).

## Relacionado

- OSINT arsenal: https://github.com/maux339-cpu/osint-x-intel-arsenal-2026
- Conta: https://github.com/maux339-cpu

## Aviso legal

Voce e o unico responsavel pelo uso. Nao use T3MP3ST/Strix em redes de terceiros sem autorizacao escrita. Nao use WallBreaker/Heretic/OBLITERATUS para abusar de servicos de terceiros.