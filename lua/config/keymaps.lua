local wk = require("which-key")

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x")

-- Delete a word backwardsk
keymap.set("n", "dw", "vb_d")

-- Select all
keymap.set("n", "<leader><C-a>", "gg<S-v>G")

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", "<cmd>tabedit<Return>", opts)
keymap.set("n", "<tab>", "<cmd>tabnext<Return>", opts)
keymap.set("n", "<s-tab>", "<cmd>tabprev<Return>", opts)

-- Split window
keymap.set("n", "ss", "<cmd>split<Return>", opts)
keymap.set("n", "sv", "<cmd>vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Comma to end
keymap.set("n", "<leader>;;", "$a;<Esc>", { desc = "Insert ; to end line" })
keymap.set("n", "<leader>,,", "$a,<Esc>", { desc = "Insert , to end line" })

-- Fzf
keymap.set("n", ";f", require("fzf-lua").files, { desc = "Fzf files" })
keymap.set("n", ";r", require("fzf-lua").live_grep, { desc = "Fzf Grep" })
keymap.set("n", ";m", require("fzf-lua").marks, { desc = "Fzf marks" })
keymap.set(
  "n",
  ";s",
  ":lua require'fzf-lua'.spell_suggest({ winopts = { relative='cursor', row=1.01, col=0, height=0.2, width=0.2 } })<cr>",
  { desc = "Fzf Spelling Sugestion" }
)

-- Silicon
wk.add({
  mode = { "v" },
  { "<leader>s", group = "Silicon" },
  {
    "<leader>sc",
    function()
      require("nvim-silicon").clip()
    end,
    desc = "Copy code screenshot to clipboard",
  },
  {
    "<leader>sf",
    function()
      require("nvim-silicon").file()
    end,
    desc = "Save code screenshot as file",
  },
  {
    "<leader>ss",
    function()
      require("nvim-silicon").shoot()
    end,
    desc = "Create code screenshot",
  },
})
