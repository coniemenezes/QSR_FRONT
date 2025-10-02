from dotenv import load_dotenv
import os

class EnvLibrary:
    """Library to load environment variables from .env and expose them in Robot."""

    def __init__(self, env_path: str = ".env"):
        # Carrega o .env no ambiente
        load_dotenv(env_path)

    def get_env_variable(self, name: str, default: str = "") -> str:
        """Retorna o valor da variável de ambiente ou default se não existir."""
        return os.getenv(name, default)
