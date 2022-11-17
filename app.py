import os
import sys
from PIL import Image, ImageDraw, ImageFont
import cv2

img_path = 'images/konjikido_01.jpg'
preoutput_path =  'images/out.jpg'
text = "平泉 最高"

img = Image.open(img_path)
img_resize = img.resize((550, 300))
img_resize.save('images/resize.jpg')

img2_path = 'images/resize.jpg'


font_type = "/System/Library/Fonts/ヒラギノ明朝 ProN.ttc"
font = ImageFont.truetype(font_type, 60)
img2 = Image.open(img2_path)
ImageDraw.Draw(img2).text((150, 150), text, font=font, fill=(0, 255, 255))
img2.save('images/draw.png')