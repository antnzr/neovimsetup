require("neo-tree").setup({
  close_if_last_window = true,
  popup_border_style = "rounded",
  enable_git_status = true,
  enable_diagnostics = true,
  window = {
    position = "left",
    width = 30,
  },
  mapping_options = {
    noremap = true,
    nowait = true,
  },
  mappings = {
    ["<space>"] = {
      "toggle_node",
      nowait = false, -- disable `nowait` if you have existing combos starting with this char that you want to use 
    },
    ["<2-LeftMouse>"] = "open",
  },
  filesystem = {
    filtered_items = {
      visible = false, -- when true, they will just be displayed differently than normal items
      hide_dotfiles = false,
      hide_gitignored = false,
      hide_hidden = false, -- only works on Windows for hidden files/directories
      hide_by_name = {
        --"node_modules"
      },
      hide_by_pattern = { -- uses glob style patterns
      --"*.meta",
      --"*/src/*/tsconfig.json",
      },
      always_show = { -- remains visible even if other settings would normally hide it
      --".gitignored",
      },
      never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
      --".DS_Store",
      --"thumbs.db"
      },
      never_show_by_pattern = { -- uses glob style patterns
      --".null-ls_*",
      },
    },
    follow_current_file = false,
  },
})

