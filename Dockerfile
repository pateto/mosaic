FROM osgeo/gdal

RUN apt-get update && \
    apt-get -y install pip

RUN pip install notebook \
    pip install matplotlib \
    p¡p install rasterio

WORKDIR /workdir

CMD ["sh", "-c", "jupyter notebook --allow-root --no-browser --ip=*"]