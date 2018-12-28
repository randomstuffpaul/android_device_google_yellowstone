#
# System Properties for yellowstone
#

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=28m \
    dalvik.vm.heapsize=448m \
    dalvik.vm.heapstartsize=12m

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.override_null_lcd_density=1
    ro.sf.lcd_density=320

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# GL
# Use glcomposer as the default compositor
# Don't preload OpenGL in Zygote, the Tegra drivers do not like it
PRODUCT_PROPERTY_OVERRIDES += \
    persist.tegra.compositor=glcomposer \
    ro.opengles.version=196608 \
    ro.zygote.disable_gl_preload=true

# HDMI CEC: Yellowstone works as a playback device (4)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hdmi.device_type=4

# HWUI Parameters
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.drop_shadow_cache_size=4.0 \
    ro.hwui.gradient_cache_size=0.8 \
    ro.hwui.layer_cache_size=32.0 \
    ro.hwui.path_cache_size=24.0 \
    ro.hwui.shape_cache_size=3.0 \
    ro.hwui.text_small_cache_height=512 \
    ro.hwui.text_small_cache_width=1024 \
    ro.hwui.text_large_cache_height=1024 \
    ro.hwui.text_large_cache_width=2048 \
    ro.hwui.texture_cache_flushrate=0.4 \
    ro.hwui.texture_cache_size=48.0

# NVMM
PRODUCT_PROPERTY_OVERRIDES += \
    persist.tegra.nvmmlite=1

# Stagefright (Legacy)
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true

# USB
PRODUCT_PROPERTY_OVERRIDES += \
    ro.nv.usb.pid.mtp.adb=4D02 \
    ro.nv.usb.pid.mtp=4D01 \
    ro.nv.usb.pid.ptp.adb=4D06 \
    ro.nv.usb.pid.ptp=4D05 \
    ro.nv.usb.pid.rndis.adb=4D04 \
    ro.nv.usb.pid.rndis=4D03 \
    ro.nv.usb.vid=18d1

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0
