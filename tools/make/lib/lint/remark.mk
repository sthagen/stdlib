#/
# @license Apache-2.0
#
# Copyright 2017 The Stdlib Authors
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

# Define the path to the path to the executable for linting Markdown files.
MARKDOWN_LINT ?= $(REMARK)

# Define [remark-lint][1] as the lint plugin.
#
# To install remark-lint:
#
# ```bash
# $ npm install remark-lint
# ```
#
# [1]: https://www.npmjs.com/package/remark-lint
REMARK_LINT_PLUGIN ?= remark-lint

# Define the path to the remark configuration file:
REMARK_CONF ?= $(CONFIG_DIR)/remark/.remarkrc.js

# Define the path to the remark ignore file:
REMARK_IGNORE ?= $(CONFIG_DIR)/remark/.remarkignore

# Define the command-line options when invoking the remark executable:
MARKDOWN_LINT_FLAGS ?= \
	--ext $(MARKDOWN_FILENAME_EXT) \
	--rc-path $(REMARK_CONF) \
	--ignore-path $(REMARK_IGNORE) \
	--no-stdout \
	--no-ignore \
	--no-config \
	--quiet
