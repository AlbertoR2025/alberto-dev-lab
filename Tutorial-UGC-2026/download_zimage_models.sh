#!/usr/bin/env bash
set -euo pipefail

echo "=== DESCARGA DE MODELOS Z-IMAGE TURBO ==="
echo "Total: ~28GB (20GB + 7.5GB + 320MB)"
echo ""

PERSIST_MODELS="/workspace/ComfyUI/models"

# Crear directorios
mkdir -p "$PERSIST_MODELS"/{diffusion_models,text_encoders,vae}

cd "$PERSIST_MODELS"

download_if_missing() {
  local url="$1"
  local dest="$2"
  local name=$(basename "$dest")
  
  if [ -f "$dest" ]; then
    local size=$(stat -c%s "$dest" 2>/dev/null || stat -f%z "$dest" 2>/dev/null || echo 0)
    if [ "$size" -gt 1000000 ]; then
      echo "  ✓ $name ya existe ($(numfmt --to=iec $size 2>/dev/null || echo $((size/1024/1024/1024))GB))"
      return 0
    fi
  fi
  
  echo "  ⬇ Descargando $name..."
  wget --continue --show-progress -O "$dest" "$url" || {
    echo "  ✗ ERROR: $name - Reintenta ejecutando el script de nuevo"
    return 1
  }
}

echo ">>> [1/3] VAE (320MB)..."
download_if_missing \
  "https://huggingface.co/Comfy-Org/z_image_turbo/resolve/main/split_files/vae/ae.safetensors" \
  "vae/ae.safetensors"

echo ""
echo ">>> [2/3] Text Encoder (7.5GB - 3-5 min)..."
download_if_missing \
  "https://huggingface.co/Comfy-Org/z_image_turbo/resolve/main/split_files/text_encoders/qwen_3_4b.safetensors" \
  "text_encoders/qwen_3_4b.safetensors"

echo ""
echo ">>> [3/3] Diffusion Model (20GB - 8-15 min)..."
download_if_missing \
  "https://huggingface.co/SeeSee21/Z-Image-Turbo-AIO/resolve/main/z-image-turbo-bf16-aio.safetensors" \
  "diffusion_models/z_image_turbo_bf16.safetensors"

echo ""
echo "=== VERIFICACIÓN ==="
echo "Modelos descargados:"
ls -lh diffusion_models/z_image* text_encoders/qwen* vae/ae.safetensors 2>/dev/null

echo ""
echo "Tamaños esperados:"
echo "  vae/ae.safetensors: 320MB"
echo "  text_encoders/qwen_3_4b.safetensors: 7.5GB"
echo "  diffusion_models/z_image_turbo_bf16.safetensors: 20GB"

echo ""
echo "========================================="
echo "✅ MODELOS Z-IMAGE TURBO DESCARGADOS"
echo "========================================="
