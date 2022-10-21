local status, notify = pcall(require, 'notify')
if not status then
  return
end

notify.setup({
  background_colour = '#1e222a',
  stages = 'fade_in_slide_out',
})
