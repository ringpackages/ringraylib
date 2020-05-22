#===================================================================#
# Based on Original Sample from RayLib (https://www.raylib.com/)
# Ported to RingRayLib by Ring Team
#===================================================================#

load "raylib.ring"

FOVY_PERSPECTIVE   =  45.0
WIDTH_ORTHOGRAPHIC =  10.0


screenWidth  = 800
screenHeight = 450

InitWindow(screenWidth, screenHeight, "raylib [models] example - geometric shapes")

camera = Camera3D(  0.0, 10.0, 10.0,
					0.0, 0.0, 0.0,
					0.0, 1.0, 0.0, 
					FOVY_PERSPECTIVE, CAMERA_PERSPECTIVE 
				 )

SetTargetFPS(60)       

while !WindowShouldClose()  


	if IsKeyPressed(KEY_SPACE)
	
		if camera.type = CAMERA_PERSPECTIVE
		
			camera.fovy = WIDTH_ORTHOGRAPHIC
			camera.type = CAMERA_ORTHOGRAPHIC
		
		else
		
			camera.fovy = FOVY_PERSPECTIVE
			camera.type = CAMERA_PERSPECTIVE
		ok
	ok

	BeginDrawing()

		ClearBackground(RAYWHITE)

		BeginMode3D(camera)

			DrawCube(Vector3(-4.0, 0.0,  2.0), 2.0, 5.0, 2.0, RED)
			DrawCubeWires(Vector3(-4.0, 0.0,  2.0), 2.0, 5.0, 2.0, GOLD)
			DrawCubeWires(Vector3(-4.0, 0.0, -2.0), 3.0, 6.0, 2.0, MAROON)

			DrawSphere(Vector3(-1.0, 0.0, -2.0), 1.0, GREEN)
			DrawSphereWires(Vector3( 1.0, 0.0,  2.0), 2.0, 16, 16, LIME)

			DrawCylinder(Vector3(4.0, 0.0, -2.0), 1.0, 2.0, 3.0, 4, SKYBLUE)
			DrawCylinderWires(Vector3(4.0, 0.0, -2.0), 1.0, 2.0, 3.0, 4, DARKBLUE)
			DrawCylinderWires(Vector3(4.5, -1.0, 2.0), 1.0, 1.0, 2.0, 6, BROWN)

			DrawCylinder(Vector3(1.0, 0.0, -4.0), 0.0, 1.5, 3.0, 8, GOLD)
			DrawCylinderWires(Vector3(1.0, 0.0, -4.0), 0.0, 1.5, 3.0, 8, PINK)

			DrawGrid(10, 1.0)

		EndMode3D()

		DrawText("Press Spacebar to switch camera type", 10, GetScreenHeight() - 30, 20, DARKGRAY)

		if camera.type = CAMERA_ORTHOGRAPHIC
			DrawText("ORTHOGRAPHIC", 10, 40, 20, BLACK)
		else 
			if camera.type = CAMERA_PERSPECTIVE 
				DrawText("PERSPECTIVE", 10, 40, 20, BLACK)
			ok
		ok

		DrawFPS(10, 10)

	EndDrawing()
	
end

CloseWindow()
