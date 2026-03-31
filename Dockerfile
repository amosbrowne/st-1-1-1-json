# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.1-base

# install custom nodes into comfyui (first node with --mode remote to fetch updated cache)
# No registry-verified custom nodes found.
# The following custom nodes are in unknown_registry and have no aux_id (GitHub repo) provided, so they could not be automatically resolved or installed:
# - CFGGuider
# - CheckpointLoaderSimple

# download models into comfyui
RUN comfy model download --url https://huggingface.co/misri/ntrMIXIllustriousXL_xiii/blob/e6881239923f0e3a32542f657491512e8c30dc18/ntrMIXIllustriousXL_xiii.safetensors --relative-path models/checkpoints --filename ntrMIXIllustriousXL_xiii.safetensors

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/
