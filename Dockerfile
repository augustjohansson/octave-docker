FROM ubuntu:focal

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt install -y --no-install-recommends \
    autoconf \
    automake \
    bison \
    ca-certificates \
    curl \
    flex \
    g++ \
    gfortran \
    ghostscript \
    git \
    gnuplot-qt \
    gperf \
    icoutils \
    libarpack2-dev \
    libblas-dev \
    libbz2-dev \
    libcurl4-openssl-dev \
    libfftw3-dev \
    libfltk1.3-dev \
    libfontconfig1-dev \
    libfreetype6-dev \
    libgl1-mesa-dev \
    libgl2ps-dev \
    libglpk-dev \
    libglu1-mesa-dev \
    libgraphicsmagick++1-dev \
    libhdf5-dev \
    liblapack-dev \
    libncurses5-dev \
    libpcre3-dev \
    libqhull-dev \
    libqrupdate-dev \
    libqscintilla2-qt5-dev \
    libqt5opengl5-dev \
    libreadline-dev \
    librsvg2-bin  \
    libsndfile1-dev \
    libsundials-dev \
    libsundials-sunlinsol1 \
    libtool \
    libumfpack5 \
    make \
    openssl \
    portaudio19-dev \
    qtbase5-dev \
    qtbase5-dev-tools \
    qttools5-dev \
    qttools5-dev-tools \
    rapidjson-dev \
    texinfo \
    zlib1g-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/gnu-octave/octave.git && \
    cd octave && \
    ./bootstrap && \
    ./configure --without-klu --disable-docs --disable-java && \
    make -j4 install
