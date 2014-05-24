# =============================================================================
# Copyright (c) 2009-2014, Broadcom Corporation
# All rights reserved.
# Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
# 1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
# 3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
# =============================================================================

COMPILER         ?= mw
PLATFORM         ?= 2727dk
DEBUG            ?= TRUE
SRC_ROOT         ?= ../../..
MEDIA            := sdcard
FILESYSTEM       := none

# ------------------------------------------------------------------------------ #

include $(SRC_ROOT)/interface/vcos/test/common.mk

NAME             := vcos_test_$(RTOS)
ifeq ($(RTOS),none)
SOURCE           := $(SOURCES_none) $(CPP_SOURCES)
else
SOURCE           := $(SOURCES) $(CPP_SOURCES)
endif

LIBS             += interface/vcos/vcos vcfw/logging/logging

include $(SRC_ROOT)/makefiles/add_application.mk
include $(SRC_ROOT)/makefiles/common.mk