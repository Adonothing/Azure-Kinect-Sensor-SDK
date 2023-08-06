[`typedef`](file:///E:/01_Adunas/02_EnglishPath/07_program/09_C_CPP/02_EditFile/02_R7000/cpp-docs/docs/cpp/aliases-and-typedefs-cpp.md)
[`typedef`](file:///D:/BaiduSyncdisk/01_Adunas/07_%E7%BC%96%E7%A8%8B/09_C_CPP/01_%E4%B8%8B%E8%BD%BD%E6%96%87%E4%BB%B6/01_Microsoft/C++%E8%AF%AD%E8%A8%80%E6%96%87%E6%A1%A3.pdf#page=187)
[`typedef`](https://learn.microsoft.com/zh-cn/cpp/cpp/aliases-and-typedefs-cpp?view=msvc-170)
[`typedef`](https://learn.microsoft.com/en-us/cpp/cpp/aliases-and-typedefs-cpp?view=msvc-170)

使用 typedef 声明，可以为已由语言定义的类型和对你已声明的类型构造更短或更有意义的名称。

### 示例

**`typedef`** 声明的一个用途是使声明更加统一和精简。 例如：

```cpp
typedef char CHAR;          // Character type.
typedef CHAR * PSTR;        // Pointer to a string (char *).
PSTR strchr( PSTR source, CHAR target );
typedef unsigned long ulong;
ulong ul;     // Equivalent to "unsigned long ul;"
```

**`typedef`**  通常与 **`struct`** 组合在一起来声明和命名用户定义的类型：

```cpp
// typedef_specifier2.cpp
#include <stdio.h>

typedef struct mystructtag
{
    int   i;
    double f;
} mystruct;

int main()
{
    mystruct ms;
    ms.i = 10;
    ms.f = 0.99;
    printf_s("%d   %f\n", ms.i, ms.f);
}
```

```Output
10   0.990000
```

file:///E:/01_Adunas/02_EnglishPath/11_Product/01_Camera/01_Kinect/02_EditFile/02_R7000/Azure-Kinect-Sensor-SDK/include/k4a/k4atypes.h

```cpp
34
/**
 * 声明一个不透明的句柄类型。
 *
 * \param _handle_name_ 句柄的类型名称
 *
 * \remarks
 * 这用于定义 Azure Kinect API 的公共句柄类型。
 * 该宏不适合在 Azure Kinect 标头之外使用。
 */
#define K4A_DECLARE_HANDLE(_handle_name_)                                                                     
    typedef struct _##_handle_name_                                                                
    {                                                                               
        size_t _rsvd; /**< Reserved, do not use. */      
    } * _handle_name_;

```

```cpp
K4A_DECLARE_HANDLE(k4a_device_t);66
K4A_DECLARE_HANDLE(k4a_capture_t);122
K4A_DECLARE_HANDLE(k4a_image_t);173
K4A_DECLARE_HANDLE(k4a_transformation_t);195
```
### 内部同步
使用 k4a_device_configuration_t 的 depth_delay_off_color_usec 字段调整深度和彩色捕获的相对计时。
```cpp
917
typedef struct _k4a_device_configuration_t
{
    /** Image format to capture with the color camera.
     *
     * The color camera does not natively produce BGRA32 images.
     * Setting ::K4A_IMAGE_FORMAT_COLOR_BGRA32 for color_format will result in higher CPU utilization. */
    k4a_image_format_t color_format;

    /** Image resolution to capture with the color camera. */
    k4a_color_resolution_t color_resolution;

    /** Capture mode for the depth camera. */
    k4a_depth_mode_t depth_mode;

    /** Desired frame rate for the color and depth camera. */
    k4a_fps_t camera_fps;

    /** Only produce k4a_capture_t objects if they contain synchronized color and depth images.
     *
     * \details
     * This setting controls the behavior in which images are dropped when images are produced faster than they can be
     * read, or if there are errors in reading images from the device.
     *
     * \details
     * If set to true, \ref k4a_capture_t objects will only be produced with both color and depth images.
     * If set to false, \ref k4a_capture_t objects may be produced only a single image when the corresponding image is
     * dropped.
     *
     * \details
     * Setting this to false ensures that the caller receives all of the images received from the camera, regardless of
     * whether the corresponding images expected in the capture are available.
     *
     * \details
     * If either the color or depth camera are disabled, this setting has no effect.
     */
    bool synchronized_images_only;

    /**
     * Desired delay between the capture of the color image and the capture of the depth image.
     *
     * \details
     * A negative value indicates that the depth image should be captured before the color image.
     *
     * \details
     * Any value between negative and positive one capture period is valid.
     */
    int32_t depth_delay_off_color_usec;

    /** The external synchronization mode. */
    k4a_wired_sync_mode_t wired_sync_mode;

    /**
     * The external synchronization timing.
     *
     * If this camera is a subordinate, this sets the capture delay between the color camera capture and the external
     * input pulse. A setting of zero indicates that the master and subordinate color images should be aligned.
     *
     * This setting does not effect the 'Sync out' connection.
     *
     * This value must be positive and range from zero to one capture period.
     *
     * If this is not a subordinate, then this value is ignored. */
    uint32_t subordinate_delay_off_master_usec;

    /**
     * Streaming indicator automatically turns on when the color or depth camera's are in use.
     *
     * This setting disables that behavior and keeps the LED in an off state. */
    bool disable_streaming_indicator;
} k4a_device_configuration_t;
```
###外部同步
主从模式：k4a_wired_sync_mode_t wired_sync_mode
```cpp
主模式
k4a_device_configuration_t deviceConfig;
deviceConfig.wired_sync_mode = K4A_WIRED_SYNC_MODE_MASTER;
从模式
k4a_device_configuration_t deviceConfig;
deviceConfig.wired_sync_mode = K4A_WIRED_SYNC_MODE_SUBORDINATE
```
若要以编程方式检索同步输入和同步输出插孔的当前状态，请使用
k4a_device_get_sync_jack 函数。
