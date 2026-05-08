
#!/usr/bin/env python3
"""
Simple Voice-Pro Launcher
Runs Voice-Pro using the system Python environment
"""

import os
import sys

# Add the current directory to Python path
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

try:
    # Try to import required modules
    import torch
    import gradio
    print("Required modules are available")
    
    # Import Voice-Pro components
    from app.abus_app_voice import create_ui
    from src.config import UserConfig
    
    # Create a simple config
    user_config = UserConfig()
    
    # Launch the UI
    print("Launching Voice-Pro interface...")
    create_ui(user_config=user_config)
    
except ImportError as e:
    print(f"Missing dependencies: {e}")
    print("Please install required packages:")
    print("pip install torch gradio")
    sys.exit(1)
except Exception as e:
    print(f"Error running Voice-Pro: {e}")
    sys.exit(1)
