return {
  "ggml-org/llama.vim",
  init = function()
    vim.g.llama_config = {
      endpoint_fim = "http://127.0.0.1:8100/infill",
      api_type = "completion",   
      model = "qwen2.5-coder-3b-instruct",
      show_info = false,
      auto_fim = true,
      keymap_fim_accept_full = "<Tab>",
    }
  end,
}
