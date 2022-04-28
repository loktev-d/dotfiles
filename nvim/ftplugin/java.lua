local on_attach = function(client, bufnr)
    require('buf_keymaps')(client, bufnr)

    vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>jr", "<cmd>lua require('jdtls').update_project_config()<CR>", {})
end

local config = {
    cmd = {
        'java',
        '-Declipse.application=org.eclipse.jdt.ls.core.id1',
        '-Dosgi.bundles.defaultStartLevel=4',
        '-Declipse.product=org.eclipse.jdt.ls.core.product',
        '-Dlog.protocol=true',
        '-Dlog.level=ALL',
        '-Xms1g',
        '--add-modules=ALL-SYSTEM',
        '--add-opens', 'java.base/java.util=ALL-UNNAMED',
        '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
        '-javaagent:/usr/share/java/lombok/lombok.jar',
        '-Xbootclasspath/a:/usr/share/java/lombok/lombok.jar',
        '-jar', vim.fn.expand('~/.local/share/jdtls/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar'),
        '-configuration', vim.fn.expand('~/.local/share/jdtls/config_linux'),
        '-data', vim.fn.expand('~/.cache/jdtls'),
    },
    on_attach = on_attach,
    root_dir = require('jdtls.setup').find_root({ '.git', 'mvnw', 'gradlew', 'pom.xml' }),
}

require('jdtls').start_or_attach(config)
