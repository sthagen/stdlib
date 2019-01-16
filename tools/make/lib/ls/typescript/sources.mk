#/
# @license Apache-2.0
#
# Copyright (c) 2019 The Stdlib Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#/

# VARIABLES #

# Define the command flags:
FIND_TYPESCRIPT_SOURCES_FLAGS ?= \
	-type f \
	-name "$(TYPESCRIPT_SOURCES_PATTERN)" \
	-regex "$(SOURCES_FILTER)" \
	$(FIND_SOURCES_EXCLUDE_FLAGS)

ifneq ($(OS), Darwin)
	FIND_TYPESCRIPT_SOURCES_FLAGS := -regextype posix-extended $(FIND_TYPESCRIPT_SOURCES_FLAGS)
endif

# Define a command to list source files:
FIND_TYPESCRIPT_SOURCES_CMD ?= find $(find_kernel_prefix) $(ROOT_DIR) $(FIND_TYPESCRIPT_SOURCES_FLAGS)

# Define the list of source files:
TYPESCRIPT_SOURCES ?= $(shell $(FIND_TYPESCRIPT_SOURCES_CMD))


# TARGETS #

# List source files.
#
# This target prints a newline-delimited list of source files.

list-sources-typescript:
	$(QUIET) find $(find_kernel_prefix) $(ROOT_DIR) $(FIND_TYPESCRIPT_SOURCES_FLAGS) $(find_print_list)

.PHONY: list-sources-typescript