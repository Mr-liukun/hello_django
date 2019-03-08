#FROM python:3.6.7
##创建工作目录
#RUN mkdir -p /python/work/hello_django
##进入工作目录
#WORKDIR /python/work/hello_django
#
##将当前目录下的所有文件复制到指定位置
#COPY . /python/work/hello_django
#
##下载beego和bee
#RUN  pip install django==1.9.13
#
##端口
#EXPOSE 8000
#
##运行
#CMD ["python", "manage.py runserver"]

FROM python:3.6.7
RUN mkdir -p /usr/src/app
COPY hello_django /usr/src/app/
COPY run_web.sh /usr/src/app/
RUN pip install -r /usr/src/app/requirements.txt
WORKDIR /usr/src/app
CMD [ "sh", "./run_web.sh"]