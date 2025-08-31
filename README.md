🚀 AlbertoReyes-AI-Runpod-Tools
Este repositorio contiene una colección de scripts y cuadernos para automatizar la instalación de ComfyUI y la gestión de modelos en entornos cloud de RunPod, ahorrando tiempo y créditos.

📦 Contenido
Scripts de Instalación y Descarga
scripts/install_comfyui.sh - Instala ComfyUI y ComfyUI-Manager automáticamente en una instancia de RunPod.

scripts/download_flux_models.py - Descarga todos los modelos del repositorio Flux nitin19/Flux.

scripts/download_wan_i2v.py - Descarga todos los modelos del repositorio Wan Image-to-Video nitin19/Wan2.1_I2V.

scripts/download_wan_t2v.py - Descarga todos los modelos del repositorio Wan Text-to-Video nitin19/Wan2.1_T2V_T2I.

Cuaderno de Utilidad
notebooks/hf_transfer_helper.ipynb - Un cuaderno Jupyter interactivo para subir y descargar carpetas o archivos específicos de Hugging Face de manera ultrarrápida usando hf_transfer.

🛠️ Uso Rápido (RunPod)
Inicia una instancia de RunPod (GPU recomendada) con Jupyter Lab.

Abre una terminal en JupyterLab.

Clona este repositorio:

bash
git clone https://github.com/AlbertoR2025/AlbertoReyes-AI-Runpod-Tools.git
cd AlbertoReyes-AI-Runpod-Tools
Instala ComfyUI (esto también instalará dependencias necesarias):

bash
chmod +x scripts/install_comfyui.sh
./scripts/install_comfyui.sh
Descarga modelos directamente a la carpeta ComfyUI/models:

bash
# Asegúrate de estar en el entorno virtual de ComfyUI si es necesario
source /workspace/ComfyUI/venv/bin/activate

# Descarga modelos Flux
python scripts/download_flux_models.py --dir /workspace/ComfyUI/models

# Descarga modelos Wan I2V
python scripts/download_wan_i2v.py --dir /workspace/ComfyUI/models

# Descarga modelos Wan T2V
python scripts/download_wan_t2v.py --dir /workspace/ComfyUI/models
Alternativamente, ejecuta los comandos celda por celda en el cuaderno Jupyter notebooks/hf_transfer_helper.ipynb para un control más granular.

🖼️ Descargar Modelos de CivitAI
Además de Hugging Face, puedes descargar modelos de CivitAI directamente desde la interfaz de ComfyUI usando un nodo personalizado.

Consulta la guía completa aquí

‼️ Notas Importantes
Espacio en Disco: Asegúrate de tener suficiente espacio en disco antes de descargar modelos grandes. Los modelos Flux y Wan pueden ocupar decenas de GB.

Token de Hugging Face: Necesitarás un token de acceso de Hugging Face (con permisos de lectura) para usar el cuaderno de transferencia.

Los scripts han sido adaptados y son mantenidos por Alberto Reyes.

👨‍💻 Contribuciones
Las contribuciones son bienvenidas. Si tienes mejoras o scripts nuevos, ¡abre un Pull Request!



**¡Suscríbete a [Alberto Reyes AI](https://www.youtube.com/@btoreyes) para más scripts y tutorials!**