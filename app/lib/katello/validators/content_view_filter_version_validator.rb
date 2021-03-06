#
# Copyright 2014 Red Hat, Inc.
#
# This software is licensed to you under the GNU General Public
# License as published by the Free Software Foundation; either version
# 2 of the License (GPLv2) or (at your option) any later version.
# There is NO WARRANTY for this software, express or implied,
# including the implied warranties of MERCHANTABILITY,
# NON-INFRINGEMENT, or FITNESS FOR A PARTICULAR PURPOSE. You should
# have received a copy of GPLv2 along with this software; if not, see
# http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.

module Katello
  module Validators
    class ContentViewFilterVersionValidator < ActiveModel::Validator
      def validate(record)
        if !record.version.blank? && (!record.min_version.blank? || !record.max_version.blank?)
          invalid_parameters = _("Invalid filter rule specified, 'version' cannot be specified in the" \
                                 " same tuple as 'min_version' or 'max_version'")
          record.errors[:base] << invalid_parameters
        end
      end
    end
  end
end
