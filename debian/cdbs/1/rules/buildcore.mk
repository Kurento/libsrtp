# -*- mode: makefile; coding: utf-8 -*-
# Copyright © 2006 Jonas Smedegaard <dr@jones.dk>
# Description: Check for cdbs-autoupdate in DEB_BUILD_OPTIONS
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation; either version 2, or (at
# your option) any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
# 02111-1307 USA.

_cdbs_scripts_path ?= /usr/lib/cdbs
_cdbs_rules_path ?= /usr/share/cdbs/1/rules
_cdbs_class_path ?= /usr/share/cdbs/1/class

include $(_cdbs_rules_path)/buildvars.mk$(_cdbs_makefile_suffix)

ifneq (,$(findstring cdbs-autoupdate,$(DEB_BUILD_OPTIONS)))
DEB_AUTO_UPDATE_DEBIAN_CONTROL = yes
endif

include $(_cdbs_rules_path)/buildcore.mk$(_cdbs_makefile_suffix)
