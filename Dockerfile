FROM bioconductor/release_core2:20190508

COPY requirements.r requirements.r

RUN Rscript requirements.r
