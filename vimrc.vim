set nocompatible | filetype indent plugin on | syntax on

fun SetupVAM()
  let c = get(g:, 'vim_addon_manager', {})
  let g:vim_addon_manager = c
  let c.plugin_root_dir = expand('$HOME', 1) . '/.vim/vim-addons'
  let &rtp .= (empty(&rtp)? '' : ',') . c.plugin_root_dir . '/vim-addon-manager'
  let g:vim_addon_manager = {
        \ 'auto_install': 1,
        \ 'known_repos_activation_policy': 'Never',
        \ 'shell_commands_run_method': 'system',
        \ }
  if !isdirectory(c.plugin_root_dir . '/vim-addon-manager/autoload')
    silent execute '!git clone --depth=1 --quiet git://github.com/MarcWeber/vim-addon-manager'
          \ shellescape(c.plugin_root_dir . '/vim-addon-manager', 1)
  endif
  call vam#ActivateAddons(["github:whiteley"])
  call vim_addon_whiteley#Activate()
endfun
call SetupVAM()
