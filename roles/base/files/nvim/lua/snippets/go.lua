local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("go", {
    s({
        trig = "ife",
        name = "Error check statement",
        desc = "",
    }, {
        t({
            "if err != nil {",
            "\t",
        }),
        i(1),
        t({
            "",
            "}",
            "",
        }),
    }),
    s({
        trig = "ifel",
        name = "Error check statement - with log.Fatal",
        desc = "",
    }, {
        t({
            "if err != nil {",
            "\tlog.Fatal(err)",
            "}",
            "",
        }),
    }),
    s({
        trig = "ifep",
        name = "Error check statement - with panic",
        desc = "",
    }, {
        t({
            "if err != nil {",
            "\tpanic(err)",
            "}",
            "",
        }),
    }),
    s({
        trig = "ifer",
        name = "Error check statement - with return err",
        desc = "",
    }, {
        t({
            "if err != nil {",
            "\treturn err",
            "}",
            "",
        }),
    }),
    s({
        trig = "ifern",
        name = "Error check statement - with return nil, err",
        desc = "",
    }, {
        t({
            "if err != nil {",
            "\treturn nil, err",
            "}",
            "",
        }),
    }),
})
