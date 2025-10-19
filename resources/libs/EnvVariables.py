from EnvLoader import EnvLoader

loader = EnvLoader('configs/.env')

APPIUM_URL = loader.get_env("APPIUM_URL").strip()
ANDROID_PLATFORM_NAME = loader.get_env("ANDROID_PLATFORM_NAME").strip()
ANDROID_AUTOMATION_NAME = loader.get_env("ANDROID_AUTOMATION_NAME").strip()
ANDROID_DEVICE_NAME = loader.get_env("ANDROID_DEVICE_NAME").strip()
ANDROID_APP_PACKAGE = loader.get_env("ANDROID_APP_PACKAGE").strip()
ANDROID_ACTIVITY_NAME = loader.get_env("ANDROID_ACTIVITY_NAME").strip()