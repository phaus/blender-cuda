import bpy
import os

for scene in bpy.data.scenes:
    scene.render.tile_x = int(os.getenv('TILE_X', 256))
    scene.render.tile_y = int(os.getenv('TILE_Y', 256))
    scene.render.resolution_x = int(os.getenv('RESOLUTION_X', 640))
    scene.render.resolution_y = int(os.getenv('RESOLUTION_Y', 360))
    scene.render.image_settings.file_format = 'H264'

bpy.context.user_preferences.system.compute_device_type = 'CUDA'
bpy.context.user_preferences.system.compute_device = 'CUDA_0'

bpy.context.scene.cycles.device = 'GPU'
print(bpy.context.scene.cycles.device)
