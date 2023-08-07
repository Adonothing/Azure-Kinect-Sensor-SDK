### vs build输出内容如下


>------ 重新生成 已启动: 项目: CMakeLists，配置: Debug ------
  CMake is re-running because E:/01_Adunas/Azure-Kinect-Sensor-SDK/build/Win-x64-Debug-MSBuild/CMakeFiles/generate.stamp is out-of-date.
    the file 'E:/01_Adunas/Azure-Kinect-Sensor-SDK/CMakeLists.txt'
    is newer than 'E:/01_Adunas/Azure-Kinect-Sensor-SDK/build/Win-x64-Debug-MSBuild/CMakeFiles/generate.stamp.depend'
    result='-1'
  -- Selecting Windows SDK version 10.0.18362.0 to target Windows 10.0.19044.
  CMake Warning (dev) at extern/azure_c_shared/src/CMakeLists.txt:10 (project):
    Policy CMP0048 is not set: project() command manages VERSION variables.
    Run "cmake --help-policy CMP0048" for policy details.  Use the cmake_policy
    command to set the policy and suppress this warning.
  
    The following variable(s) would be set to empty:
  
      PROJECT_VERSION
      PROJECT_VERSION_MAJOR
      PROJECT_VERSION_MINOR
  This warning is for project developers.  Use -Wno-dev to suppress it.
  
  -- target architecture: x86_64
  CMake Warning (dev) at extern/azure_c_shared/src/deps/azure-macro-utils-c/CMakeLists.txt:10 (project):
    Policy CMP0048 is not set: project() command manages VERSION variables.
    Run "cmake --help-policy CMP0048" for policy details.  Use the cmake_policy
    command to set the policy and suppress this warning.
  
    The following variable(s) would be set to empty:
  
      PROJECT_VERSION
      PROJECT_VERSION_MAJOR
      PROJECT_VERSION_MINOR
  This warning is for project developers.  Use -Wno-dev to suppress it.
  
  CMake Warning (dev) at extern/azure_c_shared/src/deps/umock-c/CMakeLists.txt:15 (project):
    Policy CMP0048 is not set: project() command manages VERSION variables.
    Run "cmake --help-policy CMP0048" for policy details.  Use the cmake_policy
    command to set the policy and suppress this warning.
  
    The following variable(s) would be set to empty:
  
      PROJECT_VERSION
      PROJECT_VERSION_MAJOR
      PROJECT_VERSION_MINOR
  This warning is for project developers.  Use -Wno-dev to suppress it.
  
  CMake Deprecation Warning at extern/glfw/src/CMakeLists.txt:10 (cmake_policy):
    The OLD behavior for policy CMP0042 will be removed from a future version
    of CMake.
  
    The cmake-policies(7) manual explains that the OLD behaviors of all
    policies are deprecated and that a policy should be set to OLD only under
    specific short-term circumstances.  Projects should be ported to the NEW
    behavior and not rely on setting a policy to OLD.
  
  
  -- Could NOT find Vulkan (missing: VULKAN_LIBRARY VULKAN_INCLUDE_DIR) 
  -- Using Win32 for window creation
  CMake Warning at extern/libjpeg-turbo/CMakeLists.txt:16 (message):
    NASM assembler not found - libjpeg-turbo performance may suffer
  
  
  CMake Warning (dev) at extern/libjpeg-turbo/src/CMakeLists.txt:7 (project):
    Policy CMP0048 is not set: project() command manages VERSION variables.
    Run "cmake --help-policy CMP0048" for policy details.  Use the cmake_policy
    command to set the policy and suppress this warning.
  
    The following variable(s) would be set to empty:
  
      PROJECT_VERSION
      PROJECT_VERSION_MAJOR
      PROJECT_VERSION_MINOR
  This warning is for project developers.  Use -Wno-dev to suppress it.
  
  -- CMAKE_BUILD_TYPE = Debug
  -- VERSION = 2.0.1, BUILD = 20230806
  -- 64-bit build (x86_64)
  -- CMAKE_INSTALL_PREFIX = E:/01_Adunas/Azure-Kinect-Sensor-SDK/install/Win-x64-Debug-MSBuild
  -- CMAKE_INSTALL_BINDIR = bin (E:/01_Adunas/Azure-Kinect-Sensor-SDK/install/Win-x64-Debug-MSBuild/bin)
  -- CMAKE_INSTALL_DATAROOTDIR = share (E:/01_Adunas/Azure-Kinect-Sensor-SDK/install/Win-x64-Debug-MSBuild/share)
  -- CMAKE_INSTALL_DOCDIR = E:/01_Adunas/Azure-Kinect-Sensor-SDK/build/Win-x64-Debug-MSBuild/extern/libjpeg-turbo/install
  -- CMAKE_INSTALL_INCLUDEDIR = include (E:/01_Adunas/Azure-Kinect-Sensor-SDK/install/Win-x64-Debug-MSBuild/include)
  -- CMAKE_INSTALL_LIBDIR = lib (E:/01_Adunas/Azure-Kinect-Sensor-SDK/install/Win-x64-Debug-MSBuild/lib)
  -- Shared libraries enabled (ENABLE_SHARED = 1)
  -- Static libraries enabled (ENABLE_STATIC = 1)
  -- 12-bit JPEG support disabled (WITH_12BIT = 0)
  -- Arithmetic decoding support enabled (WITH_ARITH_DEC = 1)
  -- Arithmetic encoding support enabled (WITH_ARITH_ENC = 1)
  -- TurboJPEG API library enabled (WITH_TURBOJPEG = 1)
  -- TurboJPEG Java wrapper disabled (WITH_JAVA = 0)
  -- In-memory source/destination managers enabled (WITH_MEM_SRCDST = 1)
  -- Emulating libjpeg API/ABI v6.2 (WITH_JPEG7 = 0, WITH_JPEG8 = 0)
  -- libjpeg API shared library version = 62.3.0
  -- Compiler flags = /DWIN32 /D_WINDOWS /W3 /ZH:SHA_256 /D_CRT_SECURE_NO_WARNINGS /W3 /wd4996 /MDd /Zi /Ob0 /Od /RTC1
  -- Linker flags = /machine:x64 /INCREMENTAL:NO /debug  /INCREMENTAL:NO
  -- INLINE = __forceinline (FORCE_INLINE = 1)
  -- CMAKE_EXECUTABLE_SUFFIX = .exe
  -- SIMD extensions: None (WITH_SIMD = 0)
  -- FLOATTEST = 32bit
  CMake Warning (dev) at extern/libsoundio/src/CMakeLists.txt:2 (project):
    Policy CMP0048 is not set: project() command manages VERSION variables.
    Run "cmake --help-policy CMP0048" for policy details.  Use the cmake_policy
    command to set the policy and suppress this warning.
  
    The following variable(s) would be set to empty:
  
      PROJECT_VERSION
      PROJECT_VERSION_MAJOR
      PROJECT_VERSION_MINOR
  This warning is for project developers.  Use -Wno-dev to suppress it.
  
  Configuring libsoundio version 1.1.0
  -- Could NOT find JACK (missing: JACK_LIBRARY JACK_INCLUDE_DIR HAVE_jack_set_port_rename_callback) 
  -- Could NOT find PULSEAUDIO (missing: PULSEAUDIO_LIBRARY PULSEAUDIO_INCLUDE_DIR) 
  -- Could NOT find ALSA (missing: ALSA_LIBRARY ALSA_INCLUDE_DIR) 
  -- Could NOT find COREAUDIO (missing: COREAUDIO_LIBRARY COREAUDIO_INCLUDE_DIR) 
  
  Installation Summary
  --------------------
  * Install Directory            : E:/01_Adunas/Azure-Kinect-Sensor-SDK/install/Win-x64-Debug-MSBuild
  * Build Type                   : Debug
  * Build static libs            : ON
  * Build examples               : OFF
  * Build tests                  : OFF
  
  System Dependencies
  -------------------
  * threads                      : OK
  * JACK       (optional)        : not found
  * PulseAudio (optional)        : not found
  * ALSA       (optional)        : not found
  * CoreAudio  (optional)        : not found
  * WASAPI     (optional)        : OK
  
  -- Could NOT find JPEG (missing: JPEG_LIBRARY JPEG_INCLUDE_DIR) 
  CMake Warning (dev) at extern/libyuv/src/CMakeLists.txt:45 (if):
    Policy CMP0064 is not set: Support new TEST if() operator.  Run "cmake
    --help-policy CMP0064" for policy details.  Use the cmake_policy command to
    set the policy and suppress this warning.
  
    TEST will be interpreted as an operator when the policy is set to NEW.
    Since the policy is not set the OLD behavior will be used.
  This warning is for project developers.  Use -Wno-dev to suppress it.
  
  Building ver.: 0.0.
  Packaging for: amd-64
  -- Target architecture - x86_64
  -- Could NOT find OpenCV (missing: OpenCV_DIR)
  -- Could NOT find OpenCV (missing: OpenCV_DIR)
  -- clang-format version: clang-format version 6.0.0 (tags/RELEASE_600/final)
  
  -- Could NOT find Python3 (missing: Python3_EXECUTABLE Interpreter) 
  CMake Error at CMakeLists.txt:222 (message):
    Could not find Python3
  
  
  -- Configuring incomplete, errors occurred!
  See also "E:/01_Adunas/Azure-Kinect-Sensor-SDK/build/Win-x64-Debug-MSBuild/CMakeFiles/CMakeOutput.log".
  See also "E:/01_Adunas/Azure-Kinect-Sensor-SDK/build/Win-x64-Debug-MSBuild/CMakeFiles/CMakeError.log".
  CMake Configure step failed.  Build files cannot be regenerated correctly.

生成失败。
