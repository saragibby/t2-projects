SpinnerComponent = Ember.Component.extend

  lines: 12, # The number of lines to draw
  length: 6, # The length of each line
  width: 2, # The line thickness
  radius: 4, # The radius of the inner circle
  corners: 1, # Corner roundness (0..1)
  rotate: 0, # The rotation offset
  direction: 1, # 1: clockwise, -1: counterclockwise
  color: '#000', # #rgb or #rrggbb or array of colors
  speed: 1, # Rounds per second
  trail: 60, # Afterglow percentage
  shadow: false, # Whether to render a shadow
  hwaccel: false, # Whether to use hardware acceleration
  className: 'spinner', # The CSS class to assign to the spinner
  zIndex: 2e9, # The z-index (defaults to 2000000000)
  top: 'auto', # Top position relative to parent in px
  left: 'auto', # Left position relative to parent in px

  spinner: null

  showSpinner: (->
    target = @get('element')
    @spinner = new Spinner({
      lines: @get('lines'),
      length: @get('length'),
      width: @get('width'),
      radius: @get('radius'),
      corners: @get('corners'),
      rotate: @get('rotate'),
      direction: @get('direction'),
      color: @get('color'),
      speed: @get('speed'),
      trail: @get('trail'),
      shadow: @get('shadow'),
      hwaccel: @get('hwaccel'),
      className: @get('className'),
      zIndex: @get('zIndex'),
      top: @get('top'),
      left: @get('left')
    })
    @spinner.spin(target)
  ).on('didInsertElement')

  teardown: (->
    @spinner.stop()
  ).on('willDestroyElement')

`export default SpinnerComponent`
