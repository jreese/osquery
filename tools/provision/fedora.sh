#!/usr/bin/env bash

#  Copyright (c) 2014, Facebook, Inc.
#  All rights reserved.
#
#  This source code is licensed under the BSD-style license found in the
#  LICENSE file in the root directory of this source tree. An additional grant
#  of patent rights can be found in the PATENTS file in the same directory.

function main_fedora() {
  sudo yum update -y

  package kernel-headers

  package texinfo
  package wget
  package git-all
  package unzip
  package xz
  package xz-devel
  package python-pip
  package python-devel
  package rpm-build
  package ruby-devel
  package rubygems

  package gcc
  package binutils
  package gcc-c++

  package clang
  package clang-devel

  package bzip2
  package bzip2-devel
  package openssl-devel
  package readline-devel
  package rpm-devel
  package rpm-build
  package libblkid-devel

  install_cmake

  set_cc clang
  set_cxx clang++

  install_boost

  package systemd-devel
  package cryptsetup-devel

  install_gflags

  package doxygen
  package byacc
  package flex
  package bison

  remove_package libunwind-devel

  package autoconf
  package automake
  package libtool

  install_snappy
  install_rocksdb
  install_thrift
  install_yara

  gem_install fpm
}
