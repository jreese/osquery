#!/usr/bin/env bash

#  Copyright (c) 2014, Facebook, Inc.
#  All rights reserved.
#
#  This source code is licensed under the BSD-style license found in the
#  LICENSE file in the root directory of this source tree. An additional grant
#  of patent rights can be found in the PATENTS file in the same directory.

function main_arch() {
  sudo pacman -Sy
  sudo pacman -Sc --noconfirm

  package wget
  package git
  package unzip
  package base-devel
  package libtool
  package autoconf
  package automake
  package pkg-config
  package openssl  # libssl-dev
  package xz  # liblzma-dev
  package bison
  package flex
  package python2-pip  # python-pip
  package bzip2  # libbz2-dev
  package devtools  # arch version of devscripts
  # package debhelper

  package clang35  # clang-3.5, clang-format-3.5

  # package librpm-dev
  # package libdpkg-dev
  # package libapt-pkg-dev
  # package libudev-dev
  package libutil-linux  # libblkid-dev
  # package libcryptsetup-dev
  package linux-headers  # linux-headers-generic
  package ruby  # ruby-dev
  package gcc
  package doxygen

  package boost  # libboost1.55-all-dev
  package boost-libs

  install_cmake
  install_gflags

  remove_package libunwind

  package snappy  # libsnappy-dev
  package readline  # libreadline-dev

  set_cc clang
  set_cxx clang++

  install_thrift
  install_rocksdb
  install_yara

  gem_install fpm
}
