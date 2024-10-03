-- mod-version:3
local syntax = require "core.syntax"

syntax.add {
  name = "Ring",
  files = { "%.ring$", "%.rh$", "%.rform$" },
  comment = "//",
  patterns = {
    { pattern = "#.-\n",                  type = "comment"  },
    { pattern = "//.-\n",                 type = "comment"  },
    { pattern = { "/%*", "%*/" },         type = "comment"  },
    { pattern = { '"', '"', '\\' },       type = "string"   },
    { pattern = { "'", "'", '\\' },       type = "string"   },
    { pattern = { "`", "`" },             type = "string"   },
    { pattern = "-?%d+[%d%.]*f?",         type = "number"   },
    { pattern = "-?0x%x+",                type = "number"   },
    { pattern = "[%+%-=/%*%^%%<>!~|&]",   type = "operator" },
    { pattern = "[%a_][%w_]*%f[(]",       type = "function" },
    { pattern = "[%a_][%w_]*",            type = "symbol"   },
    { pattern = ":%a+",                   type = "literal" },
  },
  symbols = {
    -- Keywords
    ["enablehashcomments"] = "keyword",
    ["disablehashcomments"] = "keyword",
    ["call"] = "keyword",
    ["class"] = "keyword",
    ["from"] = "keyword",
    ["get"] = "keyword",
    ["give"] = "keyword",
    ["import"] = "keyword",
    ["load"] = "keyword",
    ["new"] = "keyword",
    ["package"] = "keyword",
    ["private"] = "keyword",
    ["changeringkeyword"] = "keyword",
    ["changeringoperator"] = "keyword",
    ["loadsyntax"] = "keyword",
    ["endclass"] = "keyword",
    ["endpackage"] = "keyword",

    -- Control structures
    ["if"] = "keyword",
    ["but"] = "keyword",
    ["else"] = "keyword",
    ["elseif"] = "keyword",
    ["ok"] = "keyword",
    ["for"] = "keyword",
    ["foreach"] = "keyword",
    ["to"] = "keyword",
    ["next"] = "keyword",
    ["catch"] = "keyword",
    ["step"] = "keyword",
    ["endfor"] = "keyword",
    ["while"] = "keyword",
    ["other"] = "keyword",
    ["end"] = "keyword",
    ["do"] = "keyword",
    ["endwhile"] = "keyword",
    ["endswitch"] = "keyword",
    ["endtry"] = "keyword",
    ["try"] = "keyword",
    ["break"] = "keyword",
    ["bye"] = "keyword",
    ["continue"] = "keyword",
    ["default"] = "keyword",
    ["endfunc"] = "keyword",
    ["endfunction"] = "keyword",
    ["return"] = "keyword",
    ["switch"] = "keyword",
    ["case"] = "keyword",
    ["on"] = "keyword",
    ["off"] = "keyword",
    ["again"] = "keyword",
    ["exit"] = "keyword",
    ["loop"] = "keyword",
    ["done"] = "keyword",
    ["in"] = "keyword",

    -- Built-in functions
    ["nl"] = "function",
    ["see"] = "function",
    ["put"] = "function",
    ["print"] = "function",

    -- Types using ring type hints library
    ["char"] = "keyword2",
    ["unsigned"] = "keyword2",
    ["signed"] = "keyword2",
    ["int"] = "keyword2",
    ["short"] = "keyword2",
    ["long"] = "keyword2",
    ["float"] = "keyword2",
    ["double"] = "keyword2",
    ["void"] = "keyword2",
    ["byte"] = "keyword2",
    ["boolean"] = "keyword2",
    ["string"] = "keyword2",
    ["list"] = "keyword2",
    ["number"] = "keyword2",
    ["object"] = "keyword2",
    ["public"] = "keyword2",
    ["static"] = "keyword2",
    ["abstract"] = "keyword2",
    ["protected"] = "keyword2",
    ["override"] = "keyword2",

    -- Special values
    ["true"] = "literal",
    ["false"] = "literal",
    ["null"] = "literal",

    -- Logical operators
    ["and"] = "operator",
    ["or"] = "operator",
    ["not"] = "operator",

    -- Special keywords
    ["self"] = "keyword2",
    ["func"] = "keyword",
    ["def"] = "keyword",
  }
}