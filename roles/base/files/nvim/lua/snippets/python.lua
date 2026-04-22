local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("python", {
    s({
        trig = "main",
        name = "Entrypoint",
        desc = "",
    }, {
        t({
            "def main() -> None:",
            "    ",
        }),
        i(1, "..."),
        t({
            "",
            "",
            "",
            'if __name__ == "__main__":',
            "    main()"
        })
    }),
})
