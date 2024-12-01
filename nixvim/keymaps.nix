{ 
  globals.mapleader = " ";
  keymaps = [
    {
      action = "<CMD>lua require('telescope.builtin').keymaps()<CR>";
      key = "<leader>";
      mode = [ "n" ];
    }
    {
      action = "<CMD>lua require('telescope.builtin').find_files()<CR>";
      key = "<leader>af";
      mode = [ "n" ];
    }
    {
      action = "<CMD>lua require('telescope.builtin').git_files()<CR>";
      key = "<leader>f";
      mode = [ "n" ];
    }
    {
      action = "<CMD>lua require('telescope.builtin').quickfix()<CR>";
      key = "<leader>a";
      mode = [ "n" ];
    }
    {
      action = "<CMD>lua require('telescope.builtin').lsp_document_symbols()<CR>";
      key = "<leader>s";
      mode = [ "n" ];
    }
    {
      action = "<CMD>lua require('telescope.builtin').diagnostics()<CR>";
      key = "<leader>d";
      mode = [ "n" ];
    }
    {
      action = "<CMD>lua require('telescope.builtin').lsp_definitions()<CR>";
      key = "<leader>gd";
      mode = [ "n" ];
    }
    {
      action = "<CMD>lua require('telescope.builtin').lsp_workspace_symbols()<CR>";
      key = "<leader>S";
      mode = [ "n" ];
    }
    {
      action = "<CMD>lua require('telescope.builtin').buffers()<CR>";
      key = "<leader>b";
      mode = [ "n" ];
    }
    {
      action = "<CMD>lua vim.cmd.Ex()<CR>";
      key = "<leader>pv";
      mode = [ "n" ];
    }
    {
      action = "<CMD>lua vim.cmd.LazyGitCurrentFile()<CR>";
      key = "<leader>lg";
      mode = [ "n" ];
    }
    {
      action = "<CMD>lua vim.cmd.UndotreeToggle()<CR>";
      key = "<leader>u";
      mode = [ "n" ];
    }
    {
      action = "<C-w>";
      key = "<leader>w";
      mode = [ "n" ];
    }
  ];
}
