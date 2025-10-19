from dotenv import load_dotenv
import os

class EnvLoader:
    def __init__(self, env_path="configs/.env"):
        load_dotenv(dotenv_path=env_path)

    def get_env(self, key, default=None):
        """Return environment variable value by key."""
        return os.getenv(key, default)
