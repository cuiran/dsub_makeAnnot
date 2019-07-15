FROM google/cloud-sdk:slim
RUN apt-get update && apt-get install -y python3 && apt-get -y install python3-pip

RUN git clone https://github.com/cuiran/makeAnnot.git /home/pyscripts/
RUN chmod 777 -R /home/pyscripts/

COPY requirements.txt /home/

RUN pip3 install -r /home/requirements.txt

VOLUME ["/root/.config"]
CMD [ "/bin/bash" ]
