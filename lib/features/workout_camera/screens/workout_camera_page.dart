import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:gymgenius_v1/features/workout_camera/controllers/workout_camera_controller.dart';
import 'package:gymgenius_v1/features/workout_camera/widgets/video_overlay_widget.dart';

class WorkoutCameraPage extends StatefulWidget {
  const WorkoutCameraPage({super.key});

  @override
  State<WorkoutCameraPage> createState() => _WorkoutCameraPageState();
}

class _WorkoutCameraPageState extends State<WorkoutCameraPage> {
  final WorkoutCameraController
  
  
   _cameraController = WorkoutCameraController();
  bool _showUI = false;
  int reps = 0;
  final String workoutName = 'Push-ups';

  @override
  void initState() {
    super.initState();
    _initCamera();
  }

  Future<void> _initCamera() async {
    await _cameraController.initCamera();
    if (mounted) {
      setState(() => _showUI = true);
    }
  }

  void _switchCamera() async {
    await _cameraController.switchCamera();
    setState(() {});
  }

  void _endSession() => Navigator.pop(context);

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          _cameraController.isCameraInitialized
              ? SafeArea(
                child: Stack(
                  children: [
                    // Fullscreen camera
                    Positioned.fill(
                      child: CameraPreview(_cameraController.controller!),
                    ),

                    if (_showUI) ...[
                      // Workout Name (top-left)
                      Positioned(
                        top: 32,
                        left: 16,
                        child: Text(
                          workoutName,
                          style: Theme.of(
                            context,
                          ).textTheme.titleLarge?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(color: Colors.black, blurRadius: 6),
                            ],
                          ),
                        ),
                      ),

                      // Video Overlay (bottom-right)
                      const Positioned(
                        bottom: 16,
                        right: 16,
                        child: VideoOverlayWidget(
                          videoPath: 'assets/workouts/videos/PushUp.mp4',
                        ),
                      ),

                      // Reps + Controls (bottom-left)
                      Positioned(
                        bottom: 32,
                        left: 16,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Reps: $reps',
                              style: Theme.of(
                                context,
                              ).textTheme.headlineMedium?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(color: Colors.black, blurRadius: 6),
                                ],
                              ),
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: _endSession,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 12,
                                    ),
                                  ),
                                  child: const Text("End Session"),
                                ),
                                const SizedBox(width: 12),
                                ElevatedButton(
                                  onPressed: _switchCamera,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 12,
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.flip_camera_ios_outlined,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ],
                ),
              )
              : const Center(child: CircularProgressIndicator()),
    );
  }
}
