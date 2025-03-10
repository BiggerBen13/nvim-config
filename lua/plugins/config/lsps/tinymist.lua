local b_doc = string.find(vim.fn.getcwd(), "/notes/")

local settings = function()
    if b_doc then
        return
        {
            exportPdf = "onType",
            outputPath = "$root/target/$dir/$name"
        }
    else
        return {}
    end
end

return {
    root_dir = function() if b_doc then return "/Users/biggerben/notes" else return vim.fn.getcwd() end end,
    settings = settings()
}
