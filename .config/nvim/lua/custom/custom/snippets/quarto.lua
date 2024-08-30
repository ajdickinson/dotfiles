
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node 
local i = ls.insert_node

quarto_snippet = s("qspan", {
    t("["),
    i(1, "text here"),
    t("]{"),
    i(2, "css class here"),
    t("}")
})

ls.add_snippets("quarto", { quarto_snippet }) 

