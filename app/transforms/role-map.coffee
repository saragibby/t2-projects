`import RoleMap from 't2-projects/utils/role-map'`

RoleMapTransform = DS.Transform.extend
  serialize: (object) ->
    object.get("content")

  deserialize: (json) ->
    RoleMap.create(content: json)

`export default RoleMapTransform`

