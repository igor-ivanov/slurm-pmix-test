#!/bin/bash -xEe

source /root/.bashrc

JNKNS_TOPDIR=/root/workdir/
JNKNS_BUILD_DIR=$JNKNS_TOPDIR/build
JNKNS_SOURCE_DIR=$JNKNS_TOPDIR/src
JNKNS_ROOT_DIR=/opt/

#LIBEVENT package
LIBEV_VER="2.0.21"
LIBEV_NAME=libevent-${LIBEV_VER}-stable
LIBEV_TAR="$LIBEV_NAME.tar.gz"
LIBEV_URL="http://heanet.dl.sourceforge.net/project/levent/libevent/libevent-2.0/${LIBEV_TAR}"
LIBEV_SRC="$JNKNS_SOURCE_DIR/$LIBEV_NAME"
LIBEV_BUILD=$JNKNS_BUILD_DIR/${LIBEV_NAME}_build
LIBEV_INSTALL=$JNKNS_ROOT_DIR/

# PMIx package
PMIX_GIT_URL=https://github.com/open-mpi/pmix.git
PMIX_SRC="$JNKNS_SOURCE_DIR/pmix"
PMIX_BUILD="$JNKNS_BUILD_DIR/pmix_build"
PMIX_INSTALL="$JNKNS_ROOT_DIR/"

# Munge package
MUNGE_VER="0.5.11"
MUNGE_NAME=munge-${MUNGE_VER}
MUNGE_TAR=$MUNGE_NAME.tar.bz2
MUNGE_URL=https://munge.googlecode.com/files/$MUNGE_TAR
MUNGE_SRC="$JNKNS_SOURCE_DIR/$MUNGE_NAME"
MUNGE_BUILD="$JNKNS_BUILD_DIR/$MUNGE_NAME"
MUNGE_INSTALL="$JNKNS_ROOT_DIR/"

# SLURM package
SLURM_SRC="$JNKNS_SOURCE_DIR/slurm"
SLURM_BUILD="$JNKNS_BUILD_DIR/slurm/"
SLURM_INSTALL="$JNKNS_ROOT_DIR/"

# Docker variables
DOCKER_CFG=docker/
GN_IMAGE_CONF=$DOCKER_CFG/base.Dockerfile
GN_IMAGE_NAME=artpol/cluster_base
FE_IMAGE_CONF=$DOCKER_CFG/fe.Dockerfile
FE_IMAGE_NAME=artpol/cluster_fe
CN_IMAGE_CONF=$DOCKER_CFG/cn.Dockerfile
CN_IMAGE_NAME=artpol/cluster_cn

