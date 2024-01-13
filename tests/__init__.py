import sys
import os

# Assuming that the 'core' directory is at the same level as 'tests'
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

from core.server import app
app.testing = True
