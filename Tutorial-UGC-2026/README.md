# 🚀 Tutorial UGC 2026: Avatares Hiperrealistas con ComfyUI en RunPod

Este directorio contiene los recursos oficiales para automatizar la instalación de modelos y la generación de imágenes UGC (User Generated Content) utilizando **ComfyUI** y **Z Image Turbo** en la nube de RunPod.

## 📂 Archivos Incluidos

* **`download_zimage_models.sh`**: Script de Bash optimizado para descargar rápida y limpiamente todos los modelos de Z Image Turbo directamente a tu disco persistente, sin archivos innecesarios.
* **`workflow_ugc_zimage.json`**: *(Próximamente)* Workflow de ComfyUI preconfigurado con la estructura de nodos exacta y el "Prompt Base" para generar modelos hiperrealistas.

## ⚙️ Instrucciones de Uso (Paso a Paso)

1. Despliega una máquina en RunPod utilizando la plantilla oficial de **ComfyUI (Cuda 13.0)** y enlaza tu disco persistente.
2. Abre los puertos y dirígete a **JupyterLab** (puerto 8888).
3. Arrastra el script `download_zimage_models.sh` a tu entorno de trabajo (`/workspace`).
4. Abre una terminal dentro de JupyterLab y ejecuta el siguiente comando:

   ```bash
   cd /workspace && chmod +x download_zimage_models.sh && ./download_zimage_models.sh
