FROM rocker/verse
LABEL maintainer="Emrah Er <eer@eremrah.com>"

# Install other libraries
RUN install2.r --error \
        data.table ggmap gam knitr kableExtra hdm \
    && R -e "library(devtools); \
        install_github('emraher/eermisc')"
