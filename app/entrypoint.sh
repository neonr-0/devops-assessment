#!/bin/bash
gunicorn app:app --bind=0.0.0.0:8000 --workers=4 --log-level=info --reload