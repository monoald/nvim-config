    local M = {}
    M.theme = function()
        local colors = {
            text= "#ecf3f410",
            textinsert = "#05060d",
            gray = "#818acf",
            innerbg = nil,
            outerbg = "#0a0c1c",
            normal = "#363e7f",
            insert = "#7ded7f",
            visual = "#4ac6e8",
            replace = "#fa2828",
            command = "#eb7734",
        }
        return {
            inactive = {
                a = { fg = colors.gray, bg = colors.outerbg, gui = "bold" },
                b = { fg = colors.gray, bg = colors.outerbg },
                c = { fg = colors.gray, bg = colors.innerbg },
            },
            visual = {
                a = { fg = colors.textinsert, bg = colors.visual, gui = "bold" },
                b = { fg = colors.gray, bg = colors.outerbg },
                c = { fg = colors.gray, bg = colors.innerbg },
            },
            replace = {
                a = { fg = colors.textinsert, bg = colors.replace, gui = "bold" },
                b = { fg = colors.gray, bg = colors.outerbg },
                c = { fg = colors.gray, bg = colors.innerbg },
            },
            normal = {
                a = { fg = colors.text, bg = colors.normal, gui = "bold" },
                b = { fg = colors.gray, bg = colors.outerbg },
                c = { fg = colors.gray, bg = colors.innerbg },
            },
            insert = {
                a = { fg = colors.textinsert, bg = colors.insert, gui = "bold" },
                b = { fg = colors.gray, bg = colors.outerbg },
                c = { fg = colors.gray, bg = colors.innerbg },
            },
            command = {
                a = { fg = colors.textinsert, bg = colors.command, gui = "bold" },
                b = { fg = colors.gray, bg = colors.outerbg },
                c = { fg = colors.gray, bg = colors.innerbg },
            },
        }
    end
    return M
