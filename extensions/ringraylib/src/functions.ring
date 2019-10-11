func RayLibColor r,b,g,a
	return GetColor( Bytes2Int(  Char(a) + Char(g) + Char(b) + Char(r) ) )

func Vector2 x,y
	oVector = new Vector2(x,y)
	return oVector

func Vector3 x,y,z
	oVector = new Vector3(x,y,z)
	return oVector

func Vector4 x,y,z,w
	oVector = new Vector4(x,y,z,w)
	return oVector

func Quaternion x,y,z,w
	oQuaternion = new Quaternion(x,y,z,w)
	return oQuaternion

func Matrix m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11, m12, m13, m14, m15
	oMatrix = new Matrix(m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11, m12, m13, m14, m15)
	return oMatrix

func Color r,g,b,a
	oColor = new Color(r,g,b,a)
	return oColor

func Rectangle x,y,width,height 
	oRectangle = new Rectangle(x,y,width,height)
	return oRectangle

func Image p1,p2,p3,p4,p5
	oImage = new Image(p1,p2,p3,p4,p5)
	return oImage

func Texture2D p1,p2,p3,p4,p5
	oTexture2D = new Texture2D(p1,p2,p3,p4,p5)
	return oTexture2D

func Texture p1,p2,p3,p4,p5
	return Texture2D(p1,p2,p3,p4,p5)

func NPatchInfo p1,p2,p3,p4,p5,p6,p7,p8,p9
	oNPatchInfo = new NPatchInfo(p1,p2,p3,p4,p5,p6,p7,p8,p9)
	return oNPatchInfo

func CharInfo p1,p2,p3,p4,p5,p6,p7,p8,p9
	oCharInfo = new CharInfo(p1,p2,p3,p4,p5,p6,p7,p8,p9)
	return oCharInfo

func Font p1,p2,p3,p4,p5,p6,p7,p8
	oSpriteFont = new SpriteFont(p1,p2,p3,p4,p5,p6,p7,p8)
	return oSpriteFont

func RenderTexture2D p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12
	oRenderTexture2D = new RenderTexture2D(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12)
	return oRenderTexture2D

func RenderTexture p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12
	oRenderTexture2D = new RenderTexture2D(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12)
	return oRenderTexture2D

func SpriteFont p1,p2,p3,p4,p5,p6,p7,p8
	oSpriteFont = new SpriteFont(p1,p2,p3,p4,p5,p6,p7,p8)
	return oSpriteFont

func Camera3D p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11 
	oCamera = new Camera3D(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11)
	return oCamera

func Mesh p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14
	oMesh = new Mesh(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14)
	return oMesh

func Shader p1
	oShader = new Shader(p1)
	return oShader

func Material p1,p2
	oMaterial = new Material(p1,p2)
	return oMaterial

func Transform p1,p2,p3,p4,p5,p6,p7,p8,p9
	oTransform = new Transform(p1,p2,p3,p4,p5,p6,p7,p8,p9)
	return oTransform

func BoneInfo p1
	oBoneInfo = new BoneInfo(p1)
	return oBoneInfo

func Model 
	oModel = new Model()
	return oModel

func ModelAnimation p1,p2,p3
	oModelAnimation = new ModelAnimation(p1,p2,p3)
	return oModelAnimation

func Ray p1,p2,p3,p4,p5,p6
	oRay = new Ray(p1,p2,p3,p4,p5,p6)
	return oRay

func RayhitInfo p1,p2,p3,p4,p5,p6,p7,p8
	oRayHitInfo = new RayHitInfo(p1,p2,p3,p4,p5,p6,p7,p8)
	return oRayHitInfo

func BoundingBox p1,p2,p3,p4,p5,p6
	oBox = new BoundingBox(p1,p2,p3,p4,p5,p6)
	return oBox

func Wave p1,p2,p3,p4,p5
	oWave = new Wave(p1,p2,p3,p4,p5)
	return oWave

func Sound p1,p2,p3,p4
	oSound = new Sound(p1,p2,p3,p4)
	return oSound

func AudioStream p1,p2,p3,p4,p5,p6
	oAudioStream = new AudioStream(p1,p2,p3,p4,p5,p6)
	return oAudioStream

func VrDeviceInfo p1,p2,p3,p4,p5,p6,p7,p8
	oVrDeviceInfo = new VrDeviceInfo(p1,p2,p3,p4,p5,p6,p7,p8)
	return oVrDeviceInfo

func isKeyDown vKey
	if isNumber(vKey)
		return isKeyDown_2(vKey)
	but isString(vKey)
		return isKeyDown_2(ASCII(vKey[1]))
	else 
		raise("Bad parameter type - IsKeyDown() function")
	ok

# Get Pointer Data 
func GPData vData 
	# We copy the Object to avoid replacing it when using pData = pData.data()
		pData = vData
	if isObject(pData)
		pData = pData.Data()
	ok
	return pData

# Update Object Data 
func UOData vData 
	if isObject(vData)
		vData.refresh()
	ok

func BeginMode2D camera
	return BeginMode2D_2(GPData(Camera))

func BeginMode3D camera
	return BeginMode3D_2(GPData(Camera))

func GetMouseRay mousePosition,camera
	return GetMouseRay_2(GPData(mousePosition),GPData(Camera))

func GetWorldToScreen position,camera
	return GetWorldToScreen_2(GPData(position),GPData(Camera))

func GetCameraMatrix camera
	return GetCameraMatrix_2(GPData(Camera))

func SetCameraMode camera,mode
	return SetCameraMode_2(GPData(camera),mode)

func UpdateCamera camera
	if isObject(camera)
		UpdateCamera_2(camera.Data())
		camera.refresh()
	else
		return UpdateCamera_2(camera)
	ok
	
func DrawBillboard camera,texture,center,size,tint
	return DrawBillboard_2(GPData(camera),GPData(texture),center,size,tint)

func DrawBillboardRec camera,texture,sourceRec,center,size,tint
	return DrawBillboardRec_2(GPData(camera),GPData(texture),sourceRec,center,size,tint)

func UpdateVrTracking camera
	return UpdateVrTracking_2(GPData(camera))

func DrawPixelV position, color
	return DrawPixelV_2(GPData(position),color)

func DrawLineV startPos, endPos, color
	return DrawLineV_2(GPData(startPos),GPData(endPos),color)

func DrawLineEx startPos, endPos, thick, color
	return DrawLineEx_2(GPData(startPos),GPData(endPos),thick,color)

func DrawLineBezier startPos, endPos, thick, color
	return DrawLineBezier_2(GPData(startPos), GPData(endPos), thick, color)

func DrawLineStrip points, numPoints, color
	return DrawLineStrip_2(points, numPoints, color)

func DrawCircleSector center,radius,startAngle,endAngle,segments,color
	return DrawCircleSector_2(GPData(center),radius,startAngle,endAngle,segments,color)

func DrawCircleSectorLines center,radius,startAngle,endAngle,segments,color
	return DrawCircleSectorLines_2(GPData(center),radius,startAngle,endAngle,segments,color)

func DrawCircleV center, radius, color
	return DrawCircleV_2(GPData(Center), radius, color)

func DrawRing center, innerRadius, outerRadius, startAngle, endAngle, segments, color
	return DrawRing_2(GPData(center), innerRadius, outerRadius, startAngle, endAngle, segments, color)

func DrawRingLines center, innerRadius, outerRadius, startAngle, endAngle, segments, color
	return DrawRingLines_2(GPData(center), innerRadius, outerRadius, startAngle, endAngle, segments, color)

func DrawRectangleV position, size, color
	return DrawRectangleV_2(GPData(position), GPData(size), color)

func DrawTriangle v1, v2, v3, color
	return DrawTriangle_2(GPData(v1), GPData(v2), GPData(v3), color)

func DrawTriangleLines v1, v2, v3, color
	return DrawTriangleLines_2(GPData(v1), GPData(v2), GPData(v3), color)

func DrawTriangleFan points, numPoints, color
	return DrawTriangleFan_2(points, numPoints, color)

func DrawPoly center, sides, radius, rotation, color
	return DrawPoly_2(GPData(center), sides, radius, rotation, color)

func CheckCollisionCircles center1, radius1, center2, radius2
	return CheckCollisionCircles_2(GPData(center1), radius1, GPData(center2), radius2)

func CheckCollisionCircleRec center, radius, rec
	return CheckCollisionCircleRec_2(GPData(center), radius, GPData(rec))

func CheckCollisionPointRec point, rec
	return CheckCollisionPointRec_2(GPData(point), GPData(rec))

func CheckCollisionPointCircle point, center, radius
	return CheckCollisionPointCircle_2(GPData(point), GPData(center), radius)

func CheckCollisionPointTriangle point, p1, p2, p3
	return CheckCollisionPointTriangle_2(GPData(point), GPData(p1), GPData(p2), GPData(p3))

func ColorFromHSV hsv
	return ColorFromHSV_2(GPData(hsv))

func DrawLine3D startPos, endPos, color
	return DrawLine3D_2(GPData(startPos), GPData(endPos), color)

func DrawCircle3D center, radius, rotationAxis, rotationAngle, color
	return DrawCircle3D_2(GPData(center),radius, GPData(rotationAxis), rotationAngle, color)

func DrawCube position, width,  height, length, color
	return DrawCube_2(GPData(position), width,  height, length, color)

func DrawCubeV position, size, color
	return DrawCubeV_2(GPData(position), GPData(size), color)

func DrawCubeWires position, width, height, length, color
	return DrawCubeWires_2(GPData(position), width, height, length, color)

func DrawCubeWiresV position, size, color
	return DrawCubeWiresV_2(GPData(position), GPData(size), color)

func DrawSphere centerPos, radius, color
	return DrawSphere_2(GPData(centerPos), radius, color)

func DrawSphereEx centerPos, radius, rings, slices, color
	return DrawSphereEx_2(GPData(centerPos), radius, rings, slices, color)

func DrawSphereWires centerPos, radius, rings, slices, color
	return DrawSphereWires_2(GPData(centerPos), radius, rings, slices, color)

func DrawCylinder position, radiusTop, radiusBottom, height,  slices, color
	return DrawCylinder_2(GPData(position), radiusTop, radiusBottom, height,  slices, color)

func DrawCylinderWires position, radiusTop, radiusBottom, height, slices, color
	return DrawCylinderWires_2(GPData(position), radiusTop, radiusBottom, height, slices, color)

func DrawPlane centerPos, size, color
	return DrawPlane_2(GPData(centerPos), GPData(size), color)

func DrawGizmo position
	return DrawGizmo_2(GPData(position))

func GenMeshHeightmap heightmap, size
	return GenMeshHeightmap_2(GPData(heightmap), GPData(size))

func GenMeshCubicmap cubicmap, cubeSize
	return GenMeshCubicmap_2(GPData(cubicmap), GPData(cubeSize))

func DrawModel model,  position, scale,  tint
	return DrawModel_2(model, GPData(position), scale,  tint)

func DrawModelEx model,  position, rotationAxis,  rotationAngle, scale,  tint
	return DrawModelEx_2(model,  GPData(position), GPData(rotationAxis),  rotationAngle, GPData(scale),  tint)

func DrawModelWires model, position, scale, tint
	return DrawModelWires_2(model, GPData(position), scale, tint)

func DrawModelWiresEx model,  position, rotationAxis,  rotationAngle, scale,  tint
	return DrawModelWiresEx_2(model,  GPData(position), GPData(rotationAxis),  rotationAngle, GPData(scale),  tint)

func CheckCollisionSpheres centerA,  radiusA, centerB,  radiusB
	return CheckCollisionSpheres_2(GPData(centerA),  radiusA, GPData(centerB),  radiusB)

func CheckCollisionBoxSphere box,  centerSphere,  radiusSphere
	return CheckCollisionBoxSphere_2(box, GPData(centerSphere),  radiusSphere)

func CheckCollisionRaySphere ray,  spherePosition,  sphereRadius
	return CheckCollisionRaySphere_2(ray,  GPData(spherePosition),  sphereRadius)

func CheckCollisionRaySphereEx ray, spherePosition, sphereRadius, collisionPoint
	return CheckCollisionRaySphereEx_2(ray, GPData(spherePosition), sphereRadius, GPData(collisionPoint))

func GetCollisionRayTriangle ray, p1, p2, p3
	return GetCollisionRayTriangle_2(ray, GPData(p1), GPData(p2), GPData(p3))

func DrawRectangleRec rec, color
	return DrawRectangleRec_2(GPData(rec), color)

func DrawRectanglePro rec, origin, rotation, color
	return DrawRectanglePro_2(GPData(rec), GPData(origin), rotation, color)

func DrawRectangleGradientEx rec,  col1,  col2,  col3,  col4
	return DrawRectangleGradientEx_2(GPData(rec),  col1,  col2,  col3,  col4)

func DrawRectangleLinesEx rec,  lineThick, color
	return DrawRectangleLinesEx_2(GPData(rec),  lineThick, color)

func DrawRectangleRounded rec,  roundness,  segments,  color
	return DrawRectangleRounded_2(GPData(rec),  roundness,  segments,  color)

func DrawRectangleRoundedLines rec,  roundness,  segments,  lineThick, color
	return DrawRectangleRoundedLines_2(GPData(rec),  roundness,  segments,  lineThick, color)

func SetShapesTexture texture, source
	return SetShapesTexture_2(GPData(texture), GPData(source))

func CheckCollisionRecs rec1,  rec2
	return CheckCollisionRecs_2(GPData(rec1), GPData(rec2))

func GetCollisionRec rec1, rec2
	oRectangle = new Rectangle
	oRectangle.setData( GetCollisionRec_2(GPData(rec1), GPData(rec2)) )
	return oRectangle

func ImageCrop image, crop
	oImage = ImageCrop_2(GPData(image), GPData(crop))
	UOData(image)
	return oImage

func ImageDraw dst, src,  srcRec,  dstRec
	ImageDraw_2(GPData(dst), GPData(src),  GPData(srcRec),  GPData(dstRec))
	UOData(dst)
	UOData(src)
	return

func ImageDrawRectangle dst, rec, color
	return ImageDrawRectangle_2(GPData(dst), GPData(rec), GPData(color))

func ImageDrawRectangleLines dst, rec, thick, color
	return ImageDrawRectangleLines_2(GPData(dst), GPData(rec), thick, GPData(color))

func DrawTextureRec texture, sourceRec, position, tint
	return DrawTextureRec_2(GPData(texture), GPData(sourceRec), GPData(position), tint)

func DrawTextureQuad texture,  tiling, offset,  quad,  tint
	return DrawTextureQuad_2(GPData(texture), GPData(tiling), GPData(offset), GPData(quad),  tint)

func DrawTexturePro texture, sourceRec,  destRec,  origin, rotation, tint
	return DrawTexturePro_2(GPData(texture), GPData(sourceRec),  GPData(destRec), GPData(origin), rotation, tint)

func DrawTextureNPatch texture,  nPatchInfo, destRec,  origin,  rotation, tint
	return DrawTextureNPatch_2(GPData(texture),  nPatchInfo, GPData(destRec), GPData(origin),  rotation, tint)

func DrawTextRec font,  text,  rec,  fontSize,  spacing,  wordWrap,  tint
	return DrawTextRec_2(font,  text, GPData(rec),  fontSize,  spacing,  wordWrap,  tint)

func DrawTextRecEx font, text,  rec, fontSize, spacing, wordWrap, tint, selectStart, selectLength, selectText, selectBack
	return DrawTextRecEx_2(font, text, GPData(rec), fontSize, spacing, wordWrap, tint, selectStart, selectLength, selectText, selectBack)

func GuiWindowBox bounds, text
	return GuiWindowBox_2(GPData(bounds), text)

func GuiGroupBox bounds, text
	return GuiGroupBox_2(GPData(bounds), text)

func GuiLine bounds, text
	return GuiLine_2(GPData(bounds), text)

func GuiPanel bounds
	return GuiPanel_2(GPData(bounds))

func GuiScrollPanel bounds, content, scroll
	return GuiScrollPanel_2(GPData(bounds), GPData(content), GPData(scroll))

func GuiLabel bounds, text
	return GuiLabel_2(GPData(bounds), text)

func GuiButton bounds, text
	return GuiButton_2(GPData(bounds), text)

func GuiLabelButton bounds, text
	return GuiLabelButton_2(GPData(bounds), text)

func GuiImageButton bounds,  texture
	return GuiImageButton_2(GPData(bounds),  GPData(texture))

func GuiImageButtonEx bounds, texture, texSource, text
	return GuiImageButtonEx_2(GPData(bounds), GPData(texture), GPData(texSource), text)

func GuiToggle bounds, text, active
	return GuiToggle_2(GPData(bounds), text, active)

func GuiToggleGroup bounds, text, active
	return GuiToggleGroup_2(GPData(bounds), text, active)

func GuiCheckBox bounds, text, checked
	return GuiCheckBox_2(GPData(bounds), text, checked)

func GuiComboBox bounds, text, active
	return GuiComboBox_2(GPData(bounds), text, active)

func GuiDropdownBox bounds, text, active, editMode
	return GuiDropdownBox_2(GPData(bounds), text, active, editMode)

func GuiSpinner bounds, value, minValue, maxValue, editMode
	return GuiSpinner_2(GPData(bounds), value, minValue, maxValue, editMode)

func GuiValueBox bounds, value, minValue, maxValue, editMode
	return GuiValueBox_2(GPData(bounds), value, minValue, maxValue, editMode)

func GuiTextBox bounds, text, textSize, editMode
	return GuiTextBox_2(GPData(bounds), text, textSize, editMode)

func GuiTextBoxMulti bounds, text, textSize, editMode
	return GuiTextBoxMulti_2(GPData(bounds), text, textSize, editMode)

func GuiSlider bounds, text, value, minValue, maxValue, showValue
	return GuiSlider_2(GPData(bounds), text, value, minValue, maxValue, showValue)

func GuiSliderBar bounds, text, value, minValue, maxValue, showValue
	return GuiSliderBar_2(GPData(bounds), text, value, minValue, maxValue, showValue)

func GuiProgressBar bounds, text, value, minValue, maxValue, showValue
	return GuiProgressBar_2(GPData(bounds), text, value, minValue, maxValue, showValue)

func GuiStatusBar bounds, text
	return GuiStatusBar_2(GPData(bounds), text)

func GuiDummyRec bounds, text
	return GuiDummyRec_2(GPData(bounds), text)

func GuiScrollBar bounds, value, minValue, maxValue
	return GuiScrollBar_2(GPData(bounds), value, minValue, maxValue)

func GuiGrid bounds, spacing, subdivs
	return GuiGrid_2(GPData(bounds), spacing, subdivs)

func GuiListView bounds, text, active, scrollIndex, editMode
	return GuiListView_2(GPData(bounds), text, active, scrollIndex, editMode)

func GuiListViewEx bounds, text, count, enabled, active, focus, scrollIndex, editMode
	return GuiListViewEx_2(GPData(bounds), text, count, enabled, active, focus, scrollIndex, editMode)

func GuiMessageBox bounds, windowTitle, message, buttons
 	return GuiMessageBox_2(GPData(bounds), windowTitle, message, buttons)

func GuiTextInputBox bounds, windowTitle, message, text, buttons
	return GuiTextInputBox_2(GPData(bounds), windowTitle, message, text, buttons)

func GuiColorPicker bounds, color
	return GuiColorPicker_2(GPData(bounds), color)

func GetTouchPosition index
	oVector = new Vector2(0,0)
	oVector.setData(GetTouchPosition_2(index))
	return  oVector

func DrawRay ray, color 
	return DrawRay_2(GPData(ray),color)

func CheckCollisionRayBox ray, box
	return CheckCollisionRayBox_2(GPData(ray),GPData(box))

func LoadTextureFromImage p1
	oTexture = new Texture2D
	oTexture.setData(LoadTextureFromImage_2(GPData(p1)))
	return oTexture

func DrawTextureEx texture, position, rotation, scale, tint
	return DrawTextureEx_2( GPData(texture) , GPData(position), rotation, scale, tint )

func LoadImage fileName
	oImage = new Image
	oImage.setData(LoadImage_2(fileName))
	return oImage

func LoadImageEx pixels, width, height
	oImage = new Image 
	oImage.setData(LoadImageEx_2(pixels, width, height))
	return oImage

func LoadImagePro data, width, height, format
	oImage = new Image 
	oImage.setData(LoadImagePro_2(data, width, height, format))
	return oImage

func LoadImageRaw(fileName, width, height, format, headerSize)
	oImage = new Image 
	oImage.setData(LoadImageRaw_2(fileName, width, height, format, headerSize))
	return oImage

func ImageFlipVertical image
	ImageFlipVertical_2(GPData(image))
	UOData(image)
	return 

func ImageFlipHorizontal image
	ImageFlipHorizontal_2(GPData(image))
	UOData(image)
	return 

func ImageRotateCW image
	ImageRotateCW_2(GPData(image))
	UOData(image)
	return

func ImageRotateCCW image
	ImageRotateCCW_2(GPData(image))
	UOData(image)
	return

func ImageColorTint image, color
	ImageColorTint_2(GPData(image), GPData(color))
	UOData(image)
	return

func ImageColorInvert image
	ImageColorInvert_2(GPData(image))
	UOData(image)
	return

func ImageColorGrayscale image
	ImageColorGrayscale_2(GPData(image))
	UOData(image)
	return

func ImageColorContrast image, contrast
	ImageColorContrast_2(GPData(image), contrast)
	UOData(image)
	return

func ImageColorBrightness image, brightness
	ImageColorBrightness_2(GPData(image), brightness)
	UOData(image)
	return

func ImageColorReplace image, color, replace
	ImageColorReplace_2(GPData(image), GPData(color), GPData(replace))
	UOData(image)
	return 

func UnloadImage image
	return UnloadImage_2(GPData(image))

func UnloadTexture texture
	return UnloadTexture_2(GPData(texture))

func ImageResize image, newWidth, newHeight
	ImageResize_2(GPData(image), newWidth, newHeight)
	UOData(image)
	return 

func DrawTexture texture, posX, posY, tint
	return DrawTexture_2( GPData(texture),  posX,  posY, GPData(tint) )

func ImageDrawText dst, position, text, fontSize, color
	ImageDrawText_2(GPData(dst), GPData(position), text, fontSize, GPData(color))
	UOData(dst)
	return

func ImageDrawTextEx dst, position, font, text, fontSize, spacing, color
	ImageDrawTextEx_2(GPData(dst), GPData(position), GPData(font), text, fontSize, spacing, GPData(color))
	UOData(dst)
	return

func LoadFont fileName
	oFont = new Font 
	oFont.setData(LoadFont_2(fileName))
	return oFont

func UnloadFont font
	return UnloadFont_2(GPData(font))

func GetMousePosition
	oVector = new Vector2
	oVector.setData( GetMousePosition_2()  )
	return oVector

func LoadTexture fileName
	oTexture2D = new Texture2D
	oTexture2D.setData( LoadTexture_2(fileName) )
	return oTexture2D

func setmodelmaterialtexture oModel,nIndex,nMap,oTexture
	return setmodelmaterialtexture_2(GPData(oModel),nIndex,nMap,GPData(oTexture))
