object false

extends "katello/api/v2/common/metadata"

child @collection[:results] => :results do
  extends "katello/api/v2/package_groups/show"
end
