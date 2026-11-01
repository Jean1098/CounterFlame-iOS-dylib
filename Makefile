TARGET := iphone:clang:latest:15.0
ARCHS = arm64
INSTALL_TARGET_PROCESSES = CounterFlame

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CounterFlameTool
CounterFlameTool_FILES = src/CounterFlameTool.mm
CounterFlameTool_CFLAGS = -fobjc-arc -Wno-error -Wno-deprecated-declarations \
	-Wno-unused-variable -Wno-unused-function -Wno-unused-value \
	-Wno-nullability-completeness -Wno-c++11-extensions -Wno-format
CounterFlameTool_FRAMEWORKS = Foundation UIKit QuartzCore CoreGraphics

include $(THEOS_MAKE_PATH)/tweak.mk
