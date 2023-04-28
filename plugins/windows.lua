return {
  {
    "anuvyklack/windows.nvim",
    dependencies = {
      "anuvyklack/animation.nvim",
      "anuvyklack/middleclass",
    },
    lazy = false,
    config = function()
      require('windows').setup()
    end
  },
}
