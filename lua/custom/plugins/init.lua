-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'gruvbox'
    end,
  },

  { -- You can easily change to a different colorscheme.
    'sainnhe/gruvbox-material',
    priority = 1000,
    init = function() end,
  },

  {
    'tpope/vim-fugitive',
  },

  -- {
  --   'ibhagwan/fzf-lua',
  --   -- optional for icon support
  --   dependencies = { 'nvim-tree/nvim-web-devicons' },
  --   config = function()
  --     -- calling `setup` is optional for customization
  --     require('fzf-lua').setup {}
  --   end,
  -- },

  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  },

  -- {
  --   'David-Kunz/gen.nvim',
  --   opts = {
  --     model = 'llama3.1', -- The default model to use.
  --     quit_map = 'q', -- set keymap for close the response window
  --     retry_map = '<c-r>', -- set keymap to re-send the current prompt
  --     accept_map = '<c-cr>', -- set keymap to replace the previous selection with the last result
  --     host = 'localhost', -- The host running the Ollama service.
  --     port = '11434', -- The port on which the Ollama service is listening.
  --     display_mode = 'float', -- The display mode. Can be "float" or "split" or "horizontal-split".
  --     show_prompt = true, -- Shows the prompt submitted to Ollama.
  --     show_model = false, -- Displays which model you are using at the beginning of your chat session.
  --     no_auto_close = false, -- Never closes the window automatically.
  --     hidden = false, -- Hide the generation window (if true, will implicitly set `prompt.replace = true`), requires Neovim >= 0.10
  --     init = function(options)
  --       pcall(io.popen, 'ollama serve > /dev/null 2>&1 &')
  --     end,
  --     -- Function to initialize Ollama
  --     command = function(options)
  --       local body = { model = options.model, stream = true }
  --       return 'curl --silent --no-buffer -X POST http://' .. options.host .. ':' .. options.port .. '/api/chat -d $body'
  --     end,
  --     -- The command for the Ollama service. You can use placeholders $prompt, $model and $body (shellescaped).
  --     -- This can also be a command string.
  --     -- The executed command must return a JSON object with { response, context }
  --     -- (context property is optional).
  --     -- list_models = '<omitted lua function>', -- Retrieves a list of model names
  --     debug = false, -- Prints errors and the command which is run.
  --   },
  -- },

  -- {
  --   'jackMort/ChatGPT.nvim',
  --   event = 'VeryLazy',
  --   config = function()
  --     require('chatgpt').setup()
  --   end,
  --   dependencies = {
  --     'MunifTanjim/nui.nvim',
  --     'nvim-lua/plenary.nvim',
  --     'folke/trouble.nvim',
  --     'nvim-telescope/telescope.nvim',
  --   },
  -- },

  {
    'Exafunction/codeium.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'hrsh7th/nvim-cmp',
    },
    config = function()
      require('codeium').setup {
        enable_chat = true,
      }
    end,
  },
}
