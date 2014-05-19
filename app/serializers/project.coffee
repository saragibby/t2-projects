`import ApplicationSerializer from 't2-projects/serializers/application'`

ProjectSerializer = ApplicationSerializer.extend
  serializeHasMany: (record, json, relationship) ->
    key = relationship.key
    if key == "offices"
      json[this.keyForRelationship(key, relationship.kind)] = Ember.get(record, key).mapBy('id')
    else
      @_super()

`export default ProjectSerializer`
