FROM tensorflow/tensorflow:1.8.0-py3

ADD . /workspace
WORKDIR /workspace
RUN pip install  --no-cache-dir -r requirements.txt
RUN curl http://data.keithito.com/data/speech/tacotron-20180906.tar.gz | tar xzC /tmp
RUN ls -l /bin/bash

ENTRYPOINT [ "/bin/bash" ]
