#!/bin/bash

scons -j $(nproc) \
    platform=linuxbsd \
    target=template_release \
    production=yes \
    use_lto=yes \
    the_gates_sandbox=no \
    warnings=no \
    disable_exceptions=no
