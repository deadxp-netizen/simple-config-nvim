require("neo-tree").setup {
    enable_git_status = false,
    window = {
        width = 30,
        mappings = {
            ["l"] = "open",
            ["h"] = "close_node",
            ["P"] = {
                "toggle_preview",
                config = {
                    use_float = true,
                    },
                }
        }
    },
}
