# -*- coding: utf-8 -*-
import schedule
import time
import requests

latest_result = ""

def visit_website():
    global latest_result
    url = "https://seeyou1980.onrender.com/" 
    response = requests.get(url)
    latest_result = f"Website: {url}\nStatus code: {response.status_code}"

schedule.every(10).minutes.do(visit_website)

while True:
    schedule.run_pending()
    time.sleep(1)
    print(latest_result, end='\r')
