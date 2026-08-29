hl.config({
  general = {
    gaps_in = 5,
    gaps_out = 15,
    border_size = 2,
    col = {
      active_border = "#cba6f7",
      inactive_border = "#1e1e2e",
    },
    layout = "dwindle",
  },
  decoration = {
    active_opacity = 1.0,
    inactive_opacity = 0.5,
    blur = {
      enabled = true,
      size = 3,
      passes = 3,
    },
  },
  animations = {
    enabled = true,
  },
})
hl.curve("smooth", {
  type = "bezier",
  points = {
    { 0.1, 1.1 },
    { 0.2, 1.0 },
  }
})
hl.animation({ leaf = "border", enabled = true, speed = 10, bezier = "smooth" })
hl.animation({ leaf = "borderangle", enabled = false })
hl.animation({ leaf = "fade", enabled = false })
hl.animation({ leaf = "windows", enabled = true, speed = 10, bezier = "smooth", style = "popin 85%" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 10, bezier = "smooth", style = "slide" })
