{ 
  globals.mapleader = " ";
  keymaps = [
    {
      action = "<CMD>lua require('telescope.builtin').find_files()<CR>";
      key = "<leader>f";
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
  ];
}
