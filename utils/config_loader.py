import yaml

def load_config(config_path:str = "config/config.yaml"):
    with open(config_path, "r") as f:
        config = yaml.safe_load(f)
    return config

if __name__ == "__main__":
    config = load_config()
    print(config)