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
#

module Katello
  class KeyHostCollection < Katello::Model
    self.include_root_in_json = false

    belongs_to :activation_key, :inverse_of => :key_host_collections
    belongs_to :host_collection, :inverse_of => :key_host_collections
    validates_lengths_from_database
  end
end
