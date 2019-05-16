import bpy
import os

for scene in bpy.data.scenes:
    scene.render.tile_x = int(os.getenv('TILE_X', 256))
    scene.render.tile_y = int(os.getenv('TILE_Y', 256))
    scene.render.resolution_x = int(os.getenv('RESOLUTION_X', 640))
    scene.render.resolution_y = int(os.getenv('RESOLUTION_Y', 360))

for card in bpy.context.user_preferences.addons['cycles'].preferences.devices:
    print(card.name)

bpy.context.scene.cycles.device = 'GPU'
bpy.ops.render.render(True)

bpy.context.user_preferences.addons['cycles'].preferences.compute_device_type = 'CUDA'
bpy.context.user_preferences.addons['cycles'].preferences.devices[0].use = True
