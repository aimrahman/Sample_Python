import configparser
import io

def get_variables():
    config = configparser.ConfigParser()
    with open('config.properties', 'r') as f:
        # Prepend a dummy section header for configparser compatibility
        config_string = '[default]\n' + f.read()
    config.read_file(io.StringIO(config_string))

    # Return a dictionary of variables
    return dict(config.items('default'))
