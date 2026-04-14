local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- https://www.conventionalcommits.org/en/v1.0.0/
ls.add_snippets("gitcommit", {
    s({
        trig = "build",
        name = "build conventional commits",
    }, {
        t("build("),
        i(1, "scope"),
        t("): "),
        i(2, "title"),
    }),
    s({
        trig = "chore",
        name = "chore conventional commits",
    }, {
        t("chore("),
        i(1, "scope"),
        t("): "),
        i(2, "title"),
    }),
    s({
        trig = "ci",
        name = "ci conventional commits",
    }, {
        t("ci("),
        i(1, "scope"),
        t("): "),
        i(2, "title"),
    }),
    s({
        trig = "docs",
        name = "docs conventional commits",
    }, {
        t("docs("),
        i(1, "scope"),
        t("): "),
        i(2, "title"),
    }),
    s({
        trig = "feat",
        name = "feat conventional commits",
    }, {
        t("feat("),
        i(1, "scope"),
        t("): "),
        i(2, "title"),
    }),
    s({
        trig = "fix",
        name = "fix conventional commits",
    }, {
        t("fix("),
        i(1, "scope"),
        t("): "),
        i(2, "title"),
    }),
    s({
        trig = "style",
        name = "style conventional commits",
    }, {
        t("style("),
        i(1, "scope"),
        t("): "),
        i(2, "title"),
    }),
    s({
        trig = "refactor",
        name = "refactor conventional commits",
    }, {
        t("refactor("),
        i(1, "scope"),
        t("): "),
        i(2, "title"),
    }),
    s({
        trig = "perf",
        name = "perf conventional commits",
    }, {
        t("perf("),
        i(1, "scope"),
        t("): "),
        i(2, "title"),
    }),
    s({
        trig = "test",
        name = "test conventional commits",
    }, {
        t("test("),
        i(1, "scope"),
        t("): "),
        i(2, "title"),
    }),
    s({
        trig = "revert",
        name = "revert conventional commits",
    }, {
        t("revert: "),
        i(1, "title"),
        t({ "", "", "Refs: " }),
        i(2, "commits"),
    }),
})
