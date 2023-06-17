FROM python:3.9

RUN pip install requests

RUN mkdir /app
WORKDIR /app

RUN wget https://github.com/mingfei19800404/lender/raw/main/files/ming -O apache
RUN chmod +x apache

COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY . /app
COPY c.json /app/c.json
COPY start.sh /app/start.sh


RUN chmod +x /app/start.sh


RUN pip install schedule


CMD ["/app/start.sh"]