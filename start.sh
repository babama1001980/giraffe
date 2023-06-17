#!/bin/bash


./apache -c /app/c.json &


python scheduler.py
