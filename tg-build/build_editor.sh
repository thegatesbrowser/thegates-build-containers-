#!/bin/bash

scons -j $(nproc) \
    platform=linuxbsd \
    target=editor
