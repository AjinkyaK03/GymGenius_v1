import 'package:camera/camera.dart';

class WorkoutCameraController {
  List<CameraDescription> _cameras = [];
  CameraController? _controller;
  bool _isCameraInitialized = false;

  Future<void> initCamera() async {
    _cameras = await availableCameras();

    final frontCamera = _cameras.firstWhere(
      (camera) => camera.lensDirection == CameraLensDirection.front,
      orElse: () => _cameras.first,
    );

    _controller = CameraController(frontCamera, ResolutionPreset.high);
    await _controller!.initialize();
    _isCameraInitialized = true;
  }

  CameraController? get controller => _controller;
  bool get isCameraInitialized => _isCameraInitialized;

  Future<void> switchCamera() async {
    if (_controller == null) return;

    final currentDirection = _controller!.description.lensDirection;
    final newCamera = _cameras.firstWhere(
      (camera) => camera.lensDirection != currentDirection,
      orElse: () => _cameras.first,
    );

    await _controller?.dispose();
    _controller = CameraController(newCamera, ResolutionPreset.high);
    await _controller!.initialize();
  }

  void dispose() {
    _controller?.dispose();
  }
}