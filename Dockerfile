FROM rocker/rstudio:4.4.2

WORKDIR /home/rstudio/project

COPY renv.lock .
COPY .Rprofile .
COPY renv/ renv/

RUN R -e "install.packages('renv')" \
 && R -e "renv::restore(prompt = FALSE)"