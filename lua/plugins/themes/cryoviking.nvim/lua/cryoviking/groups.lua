local M = {}

-- neovim terminal mode colors
local function set_terminal_colors(colors)
  vim.g.terminal_color_0 = colors.background_1
  vim.g.terminal_color_1 = colors.neutral_red
  vim.g.terminal_color_2 = colors.blue_5
  vim.g.terminal_color_3 = colors.blue_7
  vim.g.terminal_color_4 = colors.blue_2
  vim.g.terminal_color_5 = colors.neutral_purple
  vim.g.terminal_color_6 = colors.blue_6
  vim.g.terminal_color_8 = colors.grey
  vim.g.terminal_color_7 = colors.blue_4
  vim.g.terminal_color_9 = colors.bright_red
  vim.g.terminal_color_10 = colors.blue_8
  vim.g.terminal_color_11 = colors.bright_yellow
  vim.g.terminal_color_12 = colors.bright_blue
  vim.g.terminal_color_13 = colors.bright_purple
  vim.g.terminal_color_14 = colors.blue_0
  vim.g.terminal_color_15 = colors.fg1
end

M.setup = function()
  local config = require("cryoviking").config
  local colors = require("cryoviking.palette").get_base_colors(vim.o.background, config.contrast)

  set_terminal_colors(colors)

  local groups = {
    -- Cryoviking
    -- New colors
    CryovikingBackground_0 = { fg = colors.background_0 },
    CryovikingBackground_1 = { fg = colors.background_1 },
    CryovikingBackground_2 = { fg = colors.background_2 },
    CryovikingBackground_3 = { fg = colors.background_3 },
    CryovikingBackground_4 = { fg = colors.background_4 },
    CryovikingLightGrey = { fg = colors.light_grey },
    CryovikingWhite = { fg = colors.white },
    CryovikingBlue_0 = { fg = colors.blue_0 },
    CryovikingBlue_1 = { fg = colors.blue_1 },
    CryovikingBlue_2 = { fg = colors.blue_2 },
    CryovikingBlue_3 = { fg = colors.blue_3 },
    CryovikingBlue_4 = { fg = colors.blue_4 },
    CryovikingBlue_5 = { fg = colors.blue_5 },
    CryovikingBlue_6 = { fg = colors.blue_6 },
    CryovikingBlue_7 = { fg = colors.blue_7 },
    CryovikingBlue_8 = { fg = colors.blue_8 },
    CryovikingBlue_9 = { fg = colors.blue_9 },
    CryovikingPink_1 = { fg = colors.pink_1 },
    CryovikingPink_2 = { fg = colors.pink_2 },
    CryovikingOrange_1 = { fg = colors.orange_1 },
    CryovikingPurple_1 = { fg = colors.purple_1 },
    CryovikingGreen_1 = { fg = colors.green_1 },

    -- Base groups
    CryovikingGrey = { fg = colors.grey },
    CryovikingBg0 = { fg = colors.bg0 },
    CryovikingBg1 = { fg = colors.bg1 },
    CryovikingBg2 = { fg = colors.bg2 },
    CryovikingBg3 = { fg = colors.bg3 },
    CryovikingBg4 = { fg = colors.bg4 },
    CryovikingBrightRed = { fg = colors.bright_red },
    CryovikingBrightRedBold = { fg = colors.bright_red, bold = config.bold },
    CryoVikingGreen_1 = { fg = colors.bright_green },
    CryoVikingGreen_1Bold = { fg = colors.bright_green, bold = config.bold },
    CryovikingBrightYellow = { fg = colors.bright_yellow },
    CryovikingBrightYellowBold = { fg = colors.bright_yellow, bold = config.bold },
    CryovikingBrightBlue = { fg = colors.bright_blue },
    CryovikingBrightBlueBold = { fg = colors.bright_blue, bold = config.bold },
    CryovikingBrightPurple = { fg = colors.bright_purple },
    CryovikingBrightPurpleBold = { fg = colors.bright_purple, bold = config.bold },
    CryovikingBrightAqua = { fg = colors.bright_aqua },
    CryovikingBrightAquaBold = { fg = colors.bright_aqua, bold = config.bold },
    CryovikingBrightOrange = { fg = colors.bright_orange },
    CryovikingBrightOrangeBold = { fg = colors.bright_orange, bold = config.bold },

    -- Nuetral colors
    CryovikingNeutralRed = { fg = colors.neutral_red },
    CryovikingNeutralGreen = { fg = colors.neutral_green },
    CryovikingNeutralYellow = { fg = colors.neutral_yellow },
    CryovikingNeutralBlue = { fg = colors.neutral_blue },
    CryovikingNeutralPurple = { fg = colors.neutral_purple },
    CryovikingNeutralAqua = { fg = colors.neutral_aqua },
    CryovikingNeutralOrange = { fg = colors.neutral_orange },

    -- Faded colors
    CryovikingFadedRed = { fg = colors.faded_red },
    CryovikingFadedGreen = { fg = colors.faded_green },
    CryovikingFadedYellow = { fg = colors.faded_yellow },
    CryovikingFadedBlue = { fg = colors.faded_blue },
    CryovikingFadedPurple = { fg = colors.faded_purple },
    CryovikingFadedAqua = { fg = colors.faded_aqua },
    CryovikingFadedOrange = { fg = colors.faded_orange },

    CryovikingBrightRedSign = config.transparent_mode and { fg = colors.bright_red, reverse = config.invert_signs }
      or { fg = colors.bright_red, bg = colors.bg1, reverse = config.invert_signs },
    CryoVikingGreen_1Sign = config.transparent_mode and { fg = colors.bright_green, reverse = config.invert_signs }
      or { fg = colors.bright_green, bg = colors.bg1, reverse = config.invert_signs },
    CryovikingBrightYellowSign = config.transparent_mode
        and { fg = colors.bright_yellow, reverse = config.invert_signs }
      or { fg = colors.bright_yellow, bg = colors.bg1, reverse = config.invert_signs },
    CryovikingBrightBlueSign = config.transparent_mode and { fg = colors.bright_blue, reverse = config.invert_signs }
      or { fg = colors.bright_blue, bg = colors.bg1, reverse = config.invert_signs },
    CryovikingBrightPurpleSign = config.transparent_mode
        and { fg = colors.bright_purple, reverse = config.invert_signs }
      or { fg = colors.bright_purple, bg = colors.bg1, reverse = config.invert_signs },
    CryovikingBrightAquaSign = config.transparent_mode and { fg = colors.bright_aqua, reverse = config.invert_signs }
      or { fg = colors.bright_aqua, bg = colors.bg1, reverse = config.invert_signs },
    CryovikingBrightOrangeSign = config.transparent_mode
        and { fg = colors.bright_orange, reverse = config.invert_signs }
      or { fg = colors.bright_orange, bg = colors.bg1, reverse = config.invert_signs },
    CryovikingBrightRedUnderline = { undercurl = config.undercurl, sp = colors.bright_red },
    CryoVikingGreen_1Underline = { undercurl = config.undercurl, sp = colors.bright_green },
    CryovikingBrightYellowUnderline = { undercurl = config.undercurl, sp = colors.bright_yellow },
    CryovikingBrightBlueUnderline = { undercurl = config.undercurl, sp = colors.bright_blue },
    CryovikingBrightPurpleUnderline = { undercurl = config.undercurl, sp = colors.bright_purple },
    CryovikingBrightAquaUnderline = { undercurl = config.undercurl, sp = colors.bright_aqua },
    CryovikingBrightOrangeUnderline = { undercurl = config.undercurl, sp = colors.bright_orange },

    -- Primary screen
    -- This is how I modify the foreground and background of general use.
    Normal = config.transparent_mode and { fg = colors.light_grey, bg = nil }
      or { fg = colors.light_grey, bg = colors.background_0 },
    NormalFloat = config.transparent_mode and { fg = colors.light_grey, bg = nil }
      or { fg = colors.light_grey, bg = colors.background_1 },
    NormalNC = config.dim_inactive and { fg = colors.light_grey, bg = colors.background_3 }
      or { link = "Normal" },

    CursorLine = { bg = colors.background_4 },
    CursorColumn = { link = "CursorLine" },
    TabLineFill = { fg = colors.fg3, bg = colors.bg1, reverse = config.invert_tabline },
    TabLineSel = { fg = colors.bright_green, bg = colors.bg1, reverse = config.invert_tabline },
    TabLine = { link = "TabLineFill" },
    MatchParen = { bg = colors.bg3, bold = config.bold },
    colorColumn = { bg = colors.bg1 },
    Conceal = { fg = colors.bright_blue },
    CursorLineNr = { fg = colors.bright_yellow, bg = colors.bg1 },
    NonText = { link = "CryovikingBg2" },
    SpecialKey = { link = "CryovikingBlue_4" },
    Visual = { bg = colors.bg0, reverse = config.invert_selection },
    VisualNOS = { link = "Visual" },
    Search = { fg = colors.bright_yellow, bg = colors.bg0, reverse = config.inverse },
    IncSearch = { fg = colors.bright_orange, bg = colors.bg0, reverse = config.inverse },
    CurSearch = { link = "IncSearch" },
    QuickFixLine = { fg = colors.bg0, bg = colors.bright_yellow, bold = config.bold },
    Underlined = { fg = colors.bright_blue, underline = config.underline },
    StatusLine = { fg = colors.background_2, bg = colors.blue_4, reverse = config.inverse },
    StatusLineNC = { fg = colors.background_2, bg = colors.blue_4, reverse = config.inverse },

    -- Window/panel settings
    WinBar = { fg = colors.background_2, bg = colors.blue_4 },
    WinBarNC = { fg = colors.background_2, bg = colors.blue_4 },
    WinSeparator = config.transparent_mode and { fg = colors.background_2, bg = nil }
      or { fg = colors.background_2, bg = colors.background_1 },

    -- Interface components
    WildMenu = { fg = colors.bright_blue, bg = colors.bg2, bold = config.bold },
    Directory = { link = "CryovikingBlue_3" },
    Title = { link = "CryoVikingGreen_1Bold" },
    ErrorMsg = { fg = colors.bg0, bg = colors.bright_red, bold = config.bold },
    MoreMsg = { link = "CryovikingBrightYellowBold" },
    ModeMsg = { link = "CryovikingBrightYellowBold" },
    Question = { link = "CryovikingBrightOrangeBold" },
    WarningMsg = { link = "CryovikingBrightRedBold" },
    LineNr = { fg = colors.blue_4 },
    SignColumn = config.transparent_mode and { bg = nil }
      or { bg = colors.background_0 },
    Folded = { fg = colors.grey, bg = colors.bg1, italic = config.italic.folds },
    FoldColumn = config.transparent_mode and { fg = colors.grey, bg = nil }
      or { fg = colors.grey, bg = colors.background_0 },
    Cursor = { reverse = config.inverse },
    vCursor = { link = "Cursor" },
    iCursor = { link = "Cursor" },
    lCursor = { link = "Cursor" },

    -- Language components
    -- Todo         anything that needs extra attention; mostly the
    --              keywords TODO FIXME and XXX
    Special = { link = "CryovikingBlue_9" },
    Comment = { fg = colors.background_2, italic = config.italic.comments },
    Todo = { fg = colors.bg0, bg = colors.bright_yellow, bold = config.bold, italic = config.italic.comments },
    Done = { fg = colors.bright_orange, bold = config.bold, italic = config.italic.comments },
    Error = { fg = colors.bright_red, bold = config.bold, reverse = config.inverse },
    Statement = { link = "CryovikingBlue_9" },
    Conditional = { link = "CryovikingBlue_9" },
    Repeat = { link = "CryovikingBlue_9" },
    Label = { link = "CryovikingBlue_9" },
    Exception = { link = "CryovikingBrightRed" },
    Operator = { link = "CryovikingLightGrey" },
    Delimiter = { link = "CryovikingLightGrey" },
    Keyword = { link = "CryovikingBlue_9" },
    Identifier = { link = "CryovikingBlue_7" },
    Function = { link = "CryovikingBlue_1" },
    PreProc = { link = "CryovikingPink_2" },
    Include = { link = "CryovikingBlue_9" },
    Define = { link = "CryovikingGreen_1" },
    Macro = { link = "Define" },
    PreCondit = { link = "CryovikingBrightAqua" },
    Constant = { link = "CryovikingPink_1" },
    Character = { link = "CryoVikingGreen_1" },
    String = { link = "CryovikingPink_1" },
    Boolean = { link = "CryovikingPink_1" },
    Number = { link = "CryovikingPink_1" },
    Float = { link = "CryovikingPink_1" },
    Type = { link = "CryovikingBlue_6" },
    StorageClass = { link = "CryovikingBlue_9" },
    Structure = { link = "CryovikingBlue_3" },
    Typedef = { link = "CryovikingBlue_9" },
    Pmenu = { fg = colors.blue_3, bg = colors.background_2 },
    PmenuSel = { fg = colors.bg2, bg = colors.bright_blue, bold = config.bold },
    PmenuSbar = { bg = colors.bg2 },
    PmenuThumb = { bg = colors.bg4 },
    DiffDelete = { fg = colors.bright_red, bg = colors.bg0, reverse = config.inverse },
    DiffAdd = { fg = colors.bright_green, bg = colors.bg0, reverse = config.inverse },
    DiffChange = { fg = colors.bright_aqua, bg = colors.bg0, reverse = config.inverse },
    DiffText = { fg = colors.bright_yellow, bg = colors.bg0, reverse = config.inverse },
    SpellCap = { link = "CryovikingBrightBlueUnderline" },
    SpellBad = { link = "CryovikingBrightRedUnderline" },
    SpellLocal = { link = "CryovikingBrightAquaUnderline" },
    SpellRare = { link = "CryovikingBrightPurpleUnderline" },
    Whitespace = { fg = colors.bg2 },

    -- LSP Diagnostic
    DiagnosticError = { link = "CryovikingFadedRed" },
    DiagnosticSignError = { link = "CryovikingFadedRedSign" },
    DiagnosticUnderlineError = { link = "CryovikingFadedRedUnderline" },
    DiagnosticFloatingError = { link = "CryovikingFadedRed" },
    DiagnosticVirtualTextError = { link = "CryovikingFadedRed" },

    DiagnosticWarn = { link = "CryovikingFadedYellow" },
    DiagnosticSignWarn = { link = "CryovikingFadedYellowSign" },
    DiagnosticUnderlineWarn = { link = "CryovikingFadedYellowUnderline" },
    DiagnosticFloatingWarn = { link = "CryovikingFadedOrange" },
    DiagnosticVirtualTextWarn = { link = "CryovikingFadedYellow" },

    DiagnosticInfo = { link = "CryovikingFadedBlue" },
    DiagnosticSignInfo = { link = "CryovikingFadedBlueSign" },
    DiagnosticUnderlineInfo = { link = "CryovikingFadedBlueUnderline" },
    DiagnosticFloatingInfo = { link = "CryovikingFadedBlue" },
    DiagnosticVirtualTextInfo = { link = "CryovikingFadedBlue" },

    DiagnosticHint = { link = "CryovikingFadedAqua" },
    DiagnosticSignHint = { link = "CryovikingFadedAquaSign" },
    DiagnosticUnderlineHint = { link = "CryovikingFadedAquaUnderline" },
    DiagnosticFloatingHint = { link = "CryovikingFadedAqua" },
    DiagnosticVirtualTextHint = { link = "CryovikingFadedAqua" },

    LspReferenceRead = { link = "CryovikingFadedYellowBold" },
    LspReferenceText = { link = "CryovikingFadedYellowBold" },
    LspReferenceWrite = { link = "CryovikingFadedOrangeBold" },
    LspCodeLens = { link = "CryovikingGrey" },
    LspSignatureActiveParameter = { link = "Search" },

    -- nvim-treesitter
    -- See `nvim-treesitter/CONTRIBUTING.md`

    --
    -- Misc
    --
    -- @comment               ; line and block comments
    ["@comment"] = { link = "Comment" },
    -- @comment.documentation ; comments documenting code
    -- @none                  ; completely disable the highlight
    ["@none"] = { bg = "NONE", fg = "NONE" },
    -- @preproc               ; various preprocessor directives & shebangs
    ["@preproc"] = { link = "PreProc" },
    -- @define                ; preprocessor definition directives
    ["@define"] = { link = "Define" },
    -- @operator              ; symbolic operators (e.g. `+` / `*`)
    ["@operator"] = { link = "Operator" },

    --
    -- Punctuation
    --
    -- @punctuation.delimiter ; delimiters (e.g. `;` / `.` / `,`)
    ["@punctuation.delimiter"] = { link = "Delimiter" },
    -- @punctuation.bracket   ; brackets (e.g. `()` / `{}` / `[]`)
    ["@punctuation.bracket"] = { link = "Delimiter" },
    -- @punctuation.special   ; special symbols (e.g. `{}` in string interpolation)
    ["@punctuation.special"] = { link = "Delimiter" },

    --
    -- Literals
    --
    -- @string               ; string literals
    ["@string"] = { link = "String" },
    -- @string.documentation ; string documenting code (e.g. Python docstrings)
    -- @string.regex         ; regular expressions
    ["@string.regex"] = { link = "String" },
    -- @string.escape        ; escape sequences
    ["@string.escape"] = { link = "SpecialChar" },
    -- @string.special       ; other special strings (e.g. dates)
    ["@string.special"] = { link = "SpecialChar" },

    -- @character            ; character literals
    ["@character"] = { link = "Character" },
    -- @character.special    ; special characters (e.g. wildcards)
    ["@character.special"] = { link = "SpecialChar" },

    -- @boolean              ; boolean literals
    ["@boolean"] = { link = "Boolean" },
    -- @number               ; numeric literals
    ["@number"] = { link = "Number" },
    -- @float                ; floating-point number literals
    ["@float"] = { link = "Float" },

    --
    -- Functions
    --
    -- @function         ; function definitions
    ["@function"] = { link = "Function" },
    -- @function.builtin ; built-in functions
    ["@function.builtin"] = { link = "Special" },
    -- @function.call    ; function calls
    ["@function.call"] = { link = "Function" },
    -- @function.macro   ; preprocessor macros
    ["@function.macro"] = { link = "Macro" },

    -- @method           ; method definitions
    ["@method"] = { link = "Function" },
    -- @method.call      ; method calls
    ["@method.call"] = { link = "Function" },

    -- @constructor      ; constructor calls and definitions
    ["@constructor"] = { link = "CryovikingLightGrey" },
    -- @parameter        ; parameters of a function
    ["@parameter"] = { link = "Identifier" },

    --
    -- Keywords
    --
    -- @keyword             ; various keywords
    ["@keyword"] = { link = "Keyword" },
    -- @keyword.coroutine   ; keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
    -- @keyword.function    ; keywords that define a function (e.g. `func` in Go, `def` in Python)
    ["@keyword.function"] = { link = "Keyword" },
    -- @keyword.operator    ; operators that are English words (e.g. `and` / `or`)
    ["@keyword.operator"] = { link = "CryovikingBlue_9" },
    -- @keyword.return      ; keywords like `return` and `yield`
    ["@keyword.return"] = { link = "Keyword" },

    -- @conditional         ; keywords related to conditionals (e.g. `if` / `else`)
    ["@conditional"] = { link = "Conditional" },
    -- @conditional.ternary ; ternary operator (e.g. `?` / `:`)

    -- @repeat              ; keywords related to loops (e.g. `for` / `while`)
    ["@repeat"] = { link = "Repeat" },
    -- @debug               ; keywords related to debugging
    ["@debug"] = { link = "Debug" },
    -- @label               ; GOTO and other labels (e.g. `label:` in C)
    ["@label"] = { link = "Label" },
    -- @include             ; keywords for including modules (e.g. `import` / `from` in Python)
    ["@include"] = { link = "Include" },
    -- @exception           ; keywords related to exceptions (e.g. `throw` / `catch`)
    ["@exception"] = { link = "Exception" },

    --
    -- Types
    --
    -- @type            ; type or class definitions and annotations
    ["@type"] = { link = "Type" },
    -- @type.builtin    ; built-in types
    ["@type.builtin"] = { link = "Type" },
    -- @type.definition ; type definitions (e.g. `typedef` in C)
    ["@type.definition"] = { link = "Typedef" },
    -- @type.qualifier  ; type qualifiers (e.g. `const`)
    ["@type.qualifier"] = { link = "Type" },

    -- @storageclass    ; modifiers that affect storage in memory or life-time
    ["@storageclass"] = { link = "StorageClass" },
    -- @attribute       ; attribute annotations (e.g. Python decorators)
    ["@attribute"] = { link = "PreProc" },
    -- @field           ; object and struct fields
    ["@field"] = { link = "CryovikingPurple_1" },
    -- @property        ; similar to `@field`
    ["@property"] = { link = "@field" },

    --
    -- Identifiers
    --
    -- @variable         ; various variable names
    ["@variable"] = { link = "Identifier" },
    -- @variable.builtin ; built-in variable names (e.g. `this`)
    ["@variable.builtin"] = { link = "Special" },

    -- @constant         ; constant identifiers
    ["@constant"] = { link = "Constant" },
    -- @constant.builtin ; built-in constant values
    ["@constant.builtin"] = { link = "Special" },
    -- @constant.macro   ; constants defined by the preprocessor
    ["@constant.macro"] = { link = "Define" },

    -- @namespace        ; modules or namespaces
    ["@namespace"] = { link = "CryovikingBlue_3" },
    -- @symbol           ; symbols or atoms
    ["@symbol"] = { link = "Identifier" },

    --
    -- Text
    --
    -- @text                  ; non-structured text
    ["@text"] = { link = "CryovikingBlue_1" },
    -- @text.strong           ; bold text
    ["@text.strong"] = { bold = config.bold },
    -- @text.emphasis         ; text with emphasis
    ["@text.emphasis"] = { italic = config.italic.strings },
    -- @text.underline        ; underlined text
    ["@text.underline"] = { underline = config.underline },
    -- @text.strike           ; strikethrough text
    ["@text.strike"] = { strikethrough = config.strikethrough },
    -- @text.title            ; text that is part of a title
    ["@text.title"] = { link = "Title" },
    -- @text.literal          ; literal or verbatim text (e.g., inline code)
    ["@text.literal"] = { link = "String" },
    -- @text.quote            ; text quotations
    -- @text.uri              ; URIs (e.g. hyperlinks)
    ["@text.uri"] = { link = "Underlined" },
    -- @text.math             ; math environments (e.g. `$ ... $` in LaTeX)
    ["@text.math"] = { link = "Special" },
    -- @text.environment      ; text environments of markup languages
    ["@text.environment"] = { link = "Macro" },
    -- @text.environment.name ; text indicating the type of an environment
    ["@text.environment.name"] = { link = "Type" },
    -- @text.reference        ; text references, footnotes, citations, etc.
    ["@text.reference"] = { link = "Constant" },

    -- @text.todo             ; todo notes
    ["@text.todo"] = { link = "Todo" },
    -- @text.note             ; info notes
    ["@text.note"] = { link = "SpecialComment" },
    -- @text.note.comment     ; XXX in comments
    ["@text.note.comment"] = { fg = colors.bright_purple, bold = config.bold },
    -- @text.warning          ; warning notes
    ["@text.warning"] = { link = "WarningMsg" },
    -- @text.danger           ; danger/error notes
    ["@text.danger"] = { link = "ErrorMsg" },
    -- @text.danger.comment   ; FIXME in comments
    ["@text.danger.comment"] = { fg = colors.fg0, bg = colors.bright_red, bold = config.bold },

    -- @text.diff.add         ; added text (for diff files)
    ["@text.diff.add"] = { link = "diffAdded" },
    -- @text.diff.delete      ; deleted text (for diff files)
    ["@text.diff.delete"] = { link = "diffRemoved" },

    --
    -- Tags
    --
    -- @tag           ; XML tag names
    ["@tag"] = { link = "Tag" },
    -- @tag.attribute ; XML tag attributes
    ["@tag.attribute"] = { link = "Identifier" },
    -- @tag.delimiter ; XML tag delimiters
    ["@tag.delimiter"] = { link = "Delimiter" },

    --
    -- Conceal
    --
    -- @conceal ; for captures that are only used for concealing

    --
    -- Spell
    --
    -- @spell   ; for defining regions to be spellchecked
    -- @nospell ; for defining regions that should NOT be spellchecked

    -- Treesitter
    -- See `:help treesitter`
    -- Those are not part of the nvim-treesitter
    ["@punctuation"] = { link = "Delimiter" },
    ["@macro"] = { link = "Macro" },
    ["@structure"] = { link = "Structure" },

    -- Semantic token
    -- See `:help lsp-semantic-highlight`
    ["@lsp.type.class"] = { link = "@type" },
    ["@lsp.type.comment"] = {}, -- do not overwrite comments
    ["@lsp.type.decorator"] = { link = "@macro" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.function"] = { link = "@function" },
    ["@lsp.type.interface"] = { link = "@constructor" },
    ["@lsp.type.macro"] = { link = "@macro" },
    ["@lsp.type.method"] = { link = "@method" },
    ["@lsp.type.namespace"] = { link = "@namespace" },
    ["@lsp.type.parameter"] = { link = "@parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.struct"] = { link = "@type" },
    ["@lsp.type.type"] = { link = "@type" },
    ["@lsp.type.typeParameter"] = { link = "@type.definition" },
    ["@lsp.type.variable"] = { link = "@variable" },

    -- gitcommit
    gitcommitSelectedFile = { link = "CryoVikingGreen_1" },
    gitcommitDiscardedFile = { link = "CryovikingBrightRed" },

    -- gitsigns.nvim
    GitSignsAdd = { link = "CryoVikingGreen_1Sign" },
    GitSignsChange = { link = "CryovikingBrightAquaSign" },
    GitSignsDelete = { link = "CryovikingBrightRedSign" },

    -- nvim-tree
    NvimTreeSymlink = { fg = colors.neutral_aqua },
    NvimTreeRootFolder = { fg = colors.neutral_purple, bold = true },
    NvimTreeFolderIcon = { fg = colors.neutral_blue, bold = true },
    NvimTreeFileIcon = { fg = colors.light2 },
    NvimTreeExecFile = { fg = colors.neutral_green, bold = true },
    NvimTreeOpenedFile = { fg = colors.bright_red, bold = true },
    NvimTreeSpecialFile = { fg = colors.neutral_yellow, bold = true, underline = true },
    NvimTreeImageFile = { fg = colors.neutral_purple },
    NvimTreeIndentMarker = { fg = colors.dark3 },
    NvimTreeGitDirty = { fg = colors.neutral_yellow },
    NvimTreeGitStaged = { fg = colors.neutral_yellow },
    NvimTreeGitMerge = { fg = colors.neutral_purple },
    NvimTreeGitRenamed = { fg = colors.neutral_purple },
    NvimTreeGitNew = { fg = colors.neutral_yellow },
    NvimTreeGitDeleted = { fg = colors.neutral_red },
    NvimTreeWindowPicker = { bg = colors.faded_aqua },

    -- termdebug
    debugPC = { bg = colors.faded_blue },
    debugBreakpoint = { link = "CryovikingBrightRedSign" },

    -- -- vim-startify
    -- StartifyBracket = { link = "CryovikingBlue_3" },
    -- StartifyFile = { link = "CryovikingBlue_1" },
    -- StartifyNumber = { link = "CryovikingBrightBlue" },
    -- StartifyPath = { link = "CryovikingGrey" },
    -- StartifySlash = { link = "CryovikingGrey" },
    -- StartifySection = { link = "CryovikingBrightYellow" },
    -- StartifySpecial = { link = "CryovikingBg2" },
    -- StartifyHeader = { link = "CryovikingBrightOrange" },
    -- StartifyFooter = { link = "CryovikingBg2" },
    -- StartifyVar = { link = "StartifyPath" },
    -- StartifySelect = { link = "Title" },

    -- vim-dirvish
    DirvishPathTail = { link = "CryovikingBrightAqua" },
    DirvishArg = { link = "CryovikingBrightYellow" },

    -- netrw
    netrwDir = { link = "CryovikingBrightAqua" },
    netrwClassify = { link = "CryovikingBrightAqua" },
    netrwLink = { link = "CryovikingGrey" },
    netrwSymLink = { link = "CryovikingBlue_1" },
    netrwExe = { link = "CryovikingBrightYellow" },
    netrwComment = { link = "CryovikingGrey" },
    netrwList = { link = "CryovikingBrightBlue" },
    netrwHelpCmd = { link = "CryovikingBrightAqua" },
    netrwCmdSep = { link = "CryovikingBlue_3" },
    netrwVersion = { link = "CryoVikingGreen_1" },

    -- nerdtree
    NERDTreeDir = { link = "CryovikingBrightAqua" },
    NERDTreeDirSlash = { link = "CryovikingBrightAqua" },
    NERDTreeOpenable = { link = "CryovikingBrightOrange" },
    NERDTreeClosable = { link = "CryovikingBrightOrange" },
    NERDTreeFile = { link = "CryovikingBlue_1" },
    NERDTreeExecFile = { link = "CryovikingBrightYellow" },
    NERDTreeUp = { link = "CryovikingGrey" },
    NERDTreeCWD = { link = "CryoVikingGreen_1" },
    NERDTreeHelp = { link = "CryovikingBlue_1" },
    NERDTreeToggleOn = { link = "CryoVikingGreen_1" },
    NERDTreeToggleOff = { link = "CryovikingBrightRed" },

    -- telescope.nvim
    TelescopeNormal = { link = "CryovikingBlue_1" },
    TelescopeSelection = { link = "CryovikingBrightOrangeBold" },
    TelescopeSelectionCaret = { link = "CryovikingBrightRed" },
    TelescopeMultiSelection = { link = "CryovikingGrey" },
    TelescopeBorder = { link = "TelescopeNormal" },
    TelescopePromptBorder = { link = "TelescopeNormal" },
    TelescopeResultsBorder = { link = "TelescopeNormal" },
    TelescopePreviewBorder = { link = "TelescopeNormal" },
    TelescopeMatching = { link = "CryovikingBrightBlue" },
    TelescopePromptPrefix = { link = "CryovikingBrightRed" },
    TelescopePrompt = { link = "TelescopeNormal" },

    -- nvim-cmp
    CmpItemAbbr = { link = "CryovikingBlue_0" },
    CmpItemAbbrDeprecated = { link = "CryovikingBlue_1" },
    CmpItemAbbrMatch = { link = "CryovikingBrightBlueBold" },
    CmpItemAbbrMatchFuzzy = { link = "CryovikingBrightBlueUnderline" },
    CmpItemMenu = { link = "CryovikingGrey" },
    CmpItemKindText = { link = "CryovikingBrightOrange" },
    CmpItemKindVariable = { link = "CryovikingBrightOrange" },
    CmpItemKindMethod = { link = "CryovikingBrightBlue" },
    CmpItemKindFunction = { link = "CryovikingBrightBlue" },
    CmpItemKindConstructor = { link = "CryovikingBrightYellow" },
    CmpItemKindUnit = { link = "CryovikingBrightBlue" },
    CmpItemKindField = { link = "CryovikingBrightBlue" },
    CmpItemKindClass = { link = "CryovikingBrightYellow" },
    CmpItemKindInterface = { link = "CryovikingBrightYellow" },
    CmpItemKindModule = { link = "CryovikingBrightBlue" },
    CmpItemKindProperty = { link = "CryovikingBrightBlue" },
    CmpItemKindValue = { link = "CryovikingBrightOrange" },
    CmpItemKindEnum = { link = "CryovikingBrightYellow" },
    CmpItemKindOperator = { link = "CryovikingBrightYellow" },
    CmpItemKindKeyword = { link = "CryovikingBrightPurple" },
    CmpItemKindEvent = { link = "CryovikingBrightPurple" },
    CmpItemKindReference = { link = "CryovikingBrightPurple" },
    CmpItemKindcolor = { link = "CryovikingBrightPurple" },
    CmpItemKindSnippet = { link = "CryoVikingGreen_1" },
    CmpItemKindFile = { link = "CryovikingBrightBlue" },
    CmpItemKindFolder = { link = "CryovikingBrightBlue" },
    CmpItemKindEnumMember = { link = "CryovikingBrightAqua" },
    CmpItemKindConstant = { link = "CryovikingBrightOrange" },
    CmpItemKindStruct = { link = "CryovikingBrightYellow" },
    CmpItemKindTypeParameter = { link = "CryovikingBrightYellow" },
    diffAdded = { link = "CryoVikingGreen_1" },
    diffRemoved = { link = "CryovikingBrightRed" },
    diffChanged = { link = "CryovikingBrightAqua" },
    diffFile = { link = "CryovikingBrightOrange" },
    diffNewFile = { link = "CryovikingBrightYellow" },
    diffOldFile = { link = "CryovikingBrightOrange" },
    diffLine = { link = "CryovikingBrightBlue" },
    diffIndexLine = { link = "diffChanged" },

    -- navic (highlight icons)
    NavicIconsFile = { link = "CryovikingBrightBlue" },
    NavicIconsModule = { link = "CryovikingBrightOrange" },
    NavicIconsNamespace = { link = "CryovikingBlue_1" },
    NavicIconsPackage = { link = "CryovikingBrightAqua" },
    NavicIconsClass = { link = "CryovikingBrightYellow" },
    NavicIconsMethod = { link = "CryovikingBrightBlue" },
    NavicIconsProperty = { link = "CryovikingBrightAqua" },
    NavicIconsField = { link = "CryovikingBrightPurple" },
    NavicIconsConstructor = { link = "CryovikingBrightBlue" },
    NavicIconsEnum = { link = "CryovikingBrightPurple" },
    NavicIconsInterface = { link = "CryoVikingGreen_1" },
    NavicIconsFunction = { link = "CryovikingBrightBlue" },
    NavicIconsVariable = { link = "CryovikingBrightPurple" },
    NavicIconsConstant = { link = "CryovikingBrightOrange" },
    NavicIconsString = { link = "CryoVikingGreen_1" },
    NavicIconsNumber = { link = "CryovikingBrightOrange" },
    NavicIconsBoolean = { link = "CryovikingBrightOrange" },
    NavicIconsArray = { link = "CryovikingBrightOrange" },
    NavicIconsObject = { link = "CryovikingBrightOrange" },
    NavicIconsKey = { link = "CryovikingBrightAqua" },
    NavicIconsNull = { link = "CryovikingBrightOrange" },
    NavicIconsEnumMember = { link = "CryovikingBrightYellow" },
    NavicIconsStruct = { link = "CryovikingBrightPurple" },
    NavicIconsEvent = { link = "CryovikingBrightYellow" },
    NavicIconsOperator = { link = "CryovikingBrightRed" },
    NavicIconsTypeParameter = { link = "CryovikingBrightRed" },
    NavicText = { link = "CryovikingWhite" },
    NavicSeparator = { link = "CryovikingWhite" },

    -- html
    htmlTag = { link = "CryovikingBrightAquaBold" },
    htmlEndTag = { link = "CryovikingBrightAquaBold" },
    htmlTagName = { link = "CryovikingBrightBlue" },
    htmlArg = { link = "CryovikingBrightOrange" },
    htmlTagN = { link = "CryovikingBlue_1" },
    htmlSpecialTagName = { link = "CryovikingBrightBlue" },
    htmlLink = { fg = colors.blue_4, underline = config.underline },
    htmlSpecialChar = { link = "CryovikingBrightRed" },
    htmlBold = { fg = colors.fg0, bg = colors.bg0, bold = config.bold },
    htmlBoldUnderline = { fg = colors.fg0, bg = colors.bg0, bold = config.bold, underline = config.underline },
    htmlBoldItalic = { fg = colors.fg0, bg = colors.bg0, bold = config.bold, italic = true },
    htmlBoldUnderlineItalic = {
      fg = colors.fg0,
      bg = colors.bg0,
      bold = config.bold,
      italic = true,
      underline = config.underline,
    },
    htmlUnderline = { fg = colors.fg0, bg = colors.bg0, underline = config.underline },
    htmlUnderlineItalic = { fg = colors.fg0, bg = colors.bg0, italic = true, underline = config.underline },
    htmlItalic = { fg = colors.fg0, bg = colors.bg0, italic = true },

    -- xml
    xmlTag = { link = "CryovikingBrightAquaBold" },
    xmlEndTag = { link = "CryovikingBrightAquaBold" },
    xmlTagName = { link = "CryovikingBrightBlue" },
    xmlEqual = { link = "CryovikingBrightBlue" },
    docbkKeyword = { link = "CryovikingBrightAquaBold" },
    xmlDocTypeDecl = { link = "CryovikingGrey" },
    xmlDocTypeKeyword = { link = "CryovikingBrightPurple" },
    xmlCdataStart = { link = "CryovikingGrey" },
    xmlCdataCdata = { link = "CryovikingBrightPurple" },
    dtdFunction = { link = "CryovikingGrey" },
    dtdTagName = { link = "CryovikingBrightPurple" },
    xmlAttrib = { link = "CryovikingBrightOrange" },
    xmlProcessingDelim = { link = "CryovikingGrey" },
    dtdParamEntityPunct = { link = "CryovikingGrey" },
    dtdParamEntityDPunct = { link = "CryovikingGrey" },
    xmlAttribPunct = { link = "CryovikingGrey" },
    xmlEntity = { link = "CryovikingBrightRed" },
    xmlEntityPunct = { link = "CryovikingBrightRed" },

    -- -- clojure
    -- clojureKeyword = { link = "CryovikingBrightBlue" },
    -- clojureCond = { link = "CryovikingBrightOrange" },
    -- clojureSpecial = { link = "CryovikingBrightOrange" },
    -- clojureDefine = { link = "CryovikingBrightOrange" },
    -- clojureFunc = { link = "CryovikingBrightYellow" },
    -- clojureRepeat = { link = "CryovikingBrightYellow" },
    -- clojureCharacter = { link = "CryovikingBrightAqua" },
    -- clojureStringEscape = { link = "CryovikingBrightAqua" },
    -- clojureException = { link = "CryovikingBrightRed" },
    -- clojureRegexp = { link = "CryovikingBrightAqua" },
    -- clojureRegexpEscape = { link = "CryovikingBrightAqua" },
    -- clojureRegexpCharClass = { fg = colors.fg3, bold = config.bold },
    -- clojureRegexpMod = { link = "clojureRegexpCharClass" },
    -- clojureRegexpQuantifier = { link = "clojureRegexpCharClass" },
    -- clojureParen = { link = "CryovikingBlue_3" },
    -- clojureAnonArg = { link = "CryovikingBrightYellow" },
    -- clojureVariable = { link = "CryovikingBrightBlue" },
    -- clojureMacro = { link = "CryovikingBrightOrange" },
    -- clojureMeta = { link = "CryovikingBrightYellow" },
    -- clojureDeref = { link = "CryovikingBrightYellow" },
    -- clojureQuote = { link = "CryovikingBrightYellow" },
    -- clojureUnquote = { link = "CryovikingBrightYellow" },

    -- C
    cOperator = { link = "CryovikingBrightPurple" },
    cppOperator = { link = "CryovikingBrightPurple" },
    cStructure = { link = "CryovikingBlue_9" },

    -- python
    pythonBuiltin = { link = "CryovikingBrightOrange" },
    pythonBuiltinObj = { link = "CryovikingBrightOrange" },
    pythonBuiltinFunc = { link = "CryovikingBrightOrange" },
    pythonFunction = { link = "CryovikingBrightAqua" },
    pythonDecorator = { link = "CryovikingBrightRed" },
    pythonInclude = { link = "CryovikingBrightBlue" },
    pythonImport = { link = "CryovikingBrightBlue" },
    pythonRun = { link = "CryovikingBrightBlue" },
    pythonCoding = { link = "CryovikingBrightBlue" },
    pythonOperator = { link = "CryovikingBrightRed" },
    pythonException = { link = "CryovikingBrightRed" },
    pythonExceptions = { link = "CryovikingBrightPurple" },
    pythonBoolean = { link = "CryovikingBrightPurple" },
    pythonDot = { link = "CryovikingBlue_3" },
    pythonConditional = { link = "CryovikingBrightRed" },
    pythonRepeat = { link = "CryovikingBrightRed" },
    pythonDottedName = { link = "CryoVikingGreen_1Bold" },

    -- CSS
    cssBraces = { link = "CryovikingBrightBlue" },
    cssFunctionName = { link = "CryovikingBrightYellow" },
    cssIdentifier = { link = "CryovikingBrightOrange" },
    cssClassName = { link = "CryoVikingGreen_1" },
    csscolor = { link = "CryovikingBrightBlue" },
    cssSelectorOp = { link = "CryovikingBrightBlue" },
    cssSelectorOp2 = { link = "CryovikingBrightBlue" },
    cssImportant = { link = "CryoVikingGreen_1" },
    cssVendor = { link = "CryovikingBlue_1" },
    cssTextProp = { link = "CryovikingBrightAqua" },
    cssAnimationProp = { link = "CryovikingBrightAqua" },
    cssUIProp = { link = "CryovikingBrightYellow" },
    cssTransformProp = { link = "CryovikingBrightAqua" },
    cssTransitionProp = { link = "CryovikingBrightAqua" },
    cssPrintProp = { link = "CryovikingBrightAqua" },
    cssPositioningProp = { link = "CryovikingBrightYellow" },
    cssBoxProp = { link = "CryovikingBrightAqua" },
    cssFontDescriptorProp = { link = "CryovikingBrightAqua" },
    cssFlexibleBoxProp = { link = "CryovikingBrightAqua" },
    cssBorderOutlineProp = { link = "CryovikingBrightAqua" },
    cssBackgroundProp = { link = "CryovikingBrightAqua" },
    cssMarginProp = { link = "CryovikingBrightAqua" },
    cssListProp = { link = "CryovikingBrightAqua" },
    cssTableProp = { link = "CryovikingBrightAqua" },
    cssFontProp = { link = "CryovikingBrightAqua" },
    cssPaddingProp = { link = "CryovikingBrightAqua" },
    cssDimensionProp = { link = "CryovikingBrightAqua" },
    cssRenderProp = { link = "CryovikingBrightAqua" },
    csscolorProp = { link = "CryovikingBrightAqua" },
    cssGeneratedContentProp = { link = "CryovikingBrightAqua" },

    -- -- javascript
    -- javaScriptBraces = { link = "CryovikingBlue_1" },
    -- javaScriptFunction = { link = "CryovikingBrightAqua" },
    -- javaScriptIdentifier = { link = "CryovikingBrightRed" },
    -- javaScriptMember = { link = "CryovikingBrightBlue" },
    -- javaScriptNumber = { link = "CryovikingBrightPurple" },
    -- javaScriptNull = { link = "CryovikingBrightPurple" },
    -- javaScriptParens = { link = "CryovikingBlue_3" },

    -- typescript
    typescriptReserved = { link = "CryovikingBrightAqua" },
    typescriptLabel = { link = "CryovikingBrightAqua" },
    typescriptFuncKeyword = { link = "CryovikingBrightAqua" },
    typescriptIdentifier = { link = "CryovikingBrightOrange" },
    typescriptBraces = { link = "CryovikingBlue_1" },
    typescriptEndColons = { link = "CryovikingBlue_1" },
    typescriptDOMObjects = { link = "CryovikingBlue_1" },
    typescriptAjaxMethods = { link = "CryovikingBlue_1" },
    typescriptLogicSymbols = { link = "CryovikingBlue_1" },
    typescriptDocSeeTag = { link = "Comment" },
    typescriptDocParam = { link = "Comment" },
    typescriptDocTags = { link = "vimCommentTitle" },
    typescriptGlobalObjects = { link = "CryovikingBlue_1" },
    typescriptParens = { link = "CryovikingBlue_3" },
    typescriptOpSymbols = { link = "CryovikingBlue_3" },
    typescriptHtmlElemProperties = { link = "CryovikingBlue_1" },
    typescriptNull = { link = "CryovikingBrightPurple" },
    typescriptInterpolationDelimiter = { link = "CryovikingBrightAqua" },

    -- -- purescript
    -- purescriptModuleKeyword = { link = "CryovikingBrightAqua" },
    -- purescriptModuleName = { link = "CryovikingBlue_1" },
    -- purescriptWhere = { link = "CryovikingBrightAqua" },
    -- purescriptDelimiter = { link = "CryovikingBlue_4" },
    -- purescriptType = { link = "CryovikingBlue_1" },
    -- purescriptImportKeyword = { link = "CryovikingBrightAqua" },
    -- purescriptHidingKeyword = { link = "CryovikingBrightAqua" },
    -- purescriptAsKeyword = { link = "CryovikingBrightAqua" },
    -- purescriptStructure = { link = "CryovikingBrightAqua" },
    -- purescriptOperator = { link = "CryovikingBrightBlue" },
    -- purescriptTypeVar = { link = "CryovikingBlue_1" },
    -- purescriptConstructor = { link = "CryovikingBlue_1" },
    -- purescriptFunction = { link = "CryovikingBlue_1" },
    -- purescriptConditional = { link = "CryovikingBrightOrange" },
    -- purescriptBacktick = { link = "CryovikingBrightOrange" },

    -- -- coffescript
    -- coffeeExtendedOp = { link = "CryovikingBlue_3" },
    -- coffeeSpecialOp = { link = "CryovikingBlue_3" },
    -- coffeeCurly = { link = "CryovikingBrightOrange" },
    -- coffeeParen = { link = "CryovikingBlue_3" },
    -- coffeeBracket = { link = "CryovikingBrightOrange" },

    -- -- ruby
    -- rubyStringDelimiter = { link = "CryoVikingGreen_1" },
    -- rubyInterpolationDelimiter = { link = "CryovikingBrightAqua" },
    -- rubyDefinedOperator = { link = "rubyKeyword" },

    -- -- objc
    -- objcTypeModifier = { link = "CryovikingBrightRed" },
    -- objcDirective = { link = "CryovikingBrightBlue" },

    -- go
    goDirective = { link = "CryovikingBrightAqua" },
    goConstants = { link = "CryovikingBlue_7" },
    goDeclaration = { link = "CryovikingBlue_9" },
    goDeclType = { link = "CryovikingBlue_9" },
    goBuiltins = { link = "CryovikingBlue_9" },

    -- lua
    luaIn = { link = "CryovikingBrightRed" },
    luaFunction = { link = "CryovikingBrightAqua" },
    luaTable = { link = "Delimiter" },

    -- -- moonscript
    -- moonSpecialOp = { link = "CryovikingBlue_3" },
    -- moonExtendedOp = { link = "CryovikingBlue_3" },
    -- moonFunction = { link = "CryovikingBlue_3" },
    -- moonObject = { link = "CryovikingBrightYellow" },

    -- -- java
    -- javaAnnotation = { link = "CryovikingBrightBlue" },
    -- javaDocTags = { link = "CryovikingBrightAqua" },
    -- javaCommentTitle = { link = "vimCommentTitle" },
    -- javaParen = { link = "CryovikingBlue_3" },
    -- javaParen1 = { link = "CryovikingBlue_3" },
    -- javaParen2 = { link = "CryovikingBlue_3" },
    -- javaParen3 = { link = "CryovikingBlue_3" },
    -- javaParen4 = { link = "CryovikingBlue_3" },
    -- javaParen5 = { link = "CryovikingBlue_3" },
    -- javaOperator = { link = "CryovikingBrightOrange" },
    -- javaVarArg = { link = "CryoVikingGreen_1" },

    -- -- elixir
    -- elixirDocString = { link = "Comment" },
    -- elixirStringDelimiter = { link = "CryoVikingGreen_1" },
    -- elixirInterpolationDelimiter = { link = "CryovikingBrightAqua" },
    -- elixirModuleDeclaration = { link = "CryovikingBrightYellow" },

    -- -- scala
    -- scalaNameDefinition = { link = "CryovikingBlue_1" },
    -- scalaCaseFollowing = { link = "CryovikingBlue_1" },
    -- scalaCapitalWord = { link = "CryovikingBlue_1" },
    -- scalaTypeExtension = { link = "CryovikingBlue_1" },
    -- scalaKeyword = { link = "CryovikingBrightRed" },
    -- scalaKeywordModifier = { link = "CryovikingBrightRed" },
    -- scalaSpecial = { link = "CryovikingBrightAqua" },
    -- scalaOperator = { link = "CryovikingBlue_1" },
    -- scalaTypeDeclaration = { link = "CryovikingBrightYellow" },
    -- scalaTypeTypePostDeclaration = { link = "CryovikingBrightYellow" },
    -- scalaInstanceDeclaration = { link = "CryovikingBlue_1" },
    -- scalaInterpolation = { link = "CryovikingBrightAqua" },

    -- markdown
    markdownItalic = { fg = colors.fg3, italic = true },
    markdownBold = { fg = colors.fg3, bold = config.bold },
    markdownBoldItalic = { fg = colors.fg3, bold = config.bold, italic = true },
    markdownH1 = { link = "CryoVikingGreen_1Bold" },
    markdownH2 = { link = "CryoVikingGreen_1Bold" },
    markdownH3 = { link = "CryovikingBrightYellowBold" },
    markdownH4 = { link = "CryovikingBrightYellowBold" },
    markdownH5 = { link = "CryovikingBrightYellow" },
    markdownH6 = { link = "CryovikingBrightYellow" },
    markdownCode = { link = "CryovikingBrightAqua" },
    markdownCodeBlock = { link = "CryovikingBrightAqua" },
    markdownCodeDelimiter = { link = "CryovikingBrightAqua" },
    markdownBlockquote = { link = "CryovikingGrey" },
    markdownListMarker = { link = "CryovikingGrey" },
    markdownOrderedListMarker = { link = "CryovikingGrey" },
    markdownRule = { link = "CryovikingGrey" },
    markdownHeadingRule = { link = "CryovikingGrey" },
    markdownUrlDelimiter = { link = "CryovikingBlue_3" },
    markdownLinkDelimiter = { link = "CryovikingBlue_3" },
    markdownLinkTextDelimiter = { link = "CryovikingBlue_3" },
    markdownHeadingDelimiter = { link = "CryovikingBrightOrange" },
    markdownUrl = { link = "CryovikingBrightPurple" },
    markdownUrlTitleDelimiter = { link = "CryoVikingGreen_1" },
    markdownLinkText = { fg = colors.gray, underline = config.underline },
    markdownIdDeclaration = { link = "markdownLinkText" },

    -- -- haskell
    -- haskellType = { link = "CryovikingBrightBlue" },
    -- haskellIdentifier = { link = "CryovikingBrightAqua" },
    -- haskellSeparator = { link = "CryovikingBlue_4" },
    -- haskellDelimiter = { link = "CryovikingBrightOrange" },
    -- haskellOperators = { link = "CryovikingBrightPurple" },
    -- haskellBacktick = { link = "CryovikingBrightOrange" },
    -- haskellStatement = { link = "CryovikingBrightPurple" },
    -- haskellConditional = { link = "CryovikingBrightPurple" },
    -- haskellLet = { link = "CryovikingBrightRed" },
    -- haskellDefault = { link = "CryovikingBrightRed" },
    -- haskellWhere = { link = "CryovikingBrightRed" },
    -- haskellBottom = { link = "CryovikingBrightRedBold" },
    -- haskellImportKeywords = { link = "CryovikingBrightPurpleBold" },
    -- haskellDeclKeyword = { link = "CryovikingBrightOrange" },
    -- haskellDecl = { link = "CryovikingBrightOrange" },
    -- haskellDeriving = { link = "CryovikingBrightPurple" },
    -- haskellAssocType = { link = "CryovikingBrightAqua" },
    -- haskellNumber = { link = "CryovikingBrightAqua" },
    -- haskellPragma = { link = "CryovikingBrightRedBold" },
    -- haskellTH = { link = "CryovikingBrightAquaBold" },
    -- haskellForeignKeywords = { link = "CryoVikingGreen_1" },
    -- haskellKeyword = { link = "CryovikingBrightRed" },
    -- haskellFloat = { link = "CryovikingBrightAqua" },
    -- haskellInfix = { link = "CryovikingBrightPurple" },
    -- haskellQuote = { link = "CryoVikingGreen_1Bold" },
    -- haskellShebang = { link = "CryovikingBrightYellowBold" },
    -- haskellLiquid = { link = "CryovikingBrightPurpleBold" },
    -- haskellQuasiQuoted = { link = "CryovikingBrightBlueBold" },
    -- haskellRecursiveDo = { link = "CryovikingBrightPurple" },
    -- haskellQuotedType = { link = "CryovikingBrightRed" },
    -- haskellPreProc = { link = "CryovikingBlue_4" },
    -- haskellTypeRoles = { link = "CryovikingBrightRedBold" },
    -- haskellTypeForall = { link = "CryovikingBrightRed" },
    -- haskellPatternKeyword = { link = "CryovikingBrightBlue" },

    -- json
    jsonKeyword = { link = "CryoVikingGreen_1" },
    jsonQuote = { link = "CryoVikingGreen_1" },
    jsonBraces = { link = "CryovikingBlue_1" },
    jsonString = { link = "CryovikingBlue_1" },

    -- c#
    csBraces = { link = "CryovikingBlue_1" },
    csEndColon = { link = "CryovikingBlue_1" },
    csLogicSymbols = { link = "CryovikingBlue_1" },
    csParens = { link = "CryovikingBlue_3" },
    csOpSymbols = { link = "CryovikingBlue_3" },
    csInterpolationDelimiter = { link = "CryovikingBlue_3" },
    csInterpolationAlignDel = { link = "CryovikingBrightAquaBold" },
    csInterpolationFormat = { link = "CryovikingBrightAqua" },
    csInterpolationFormatDel = { link = "CryovikingBrightAquaBold" },

    -- -- rust btw
    -- rustSigil = { link = "CryovikingBrightOrange" },
    -- rustEscape = { link = "CryovikingBrightAqua" },
    -- rustStringContinuation = { link = "CryovikingBrightAqua" },
    -- rustEnum = { link = "CryovikingBrightAqua" },
    -- rustStructure = { link = "CryovikingBrightAqua" },
    -- rustModPathSep = { link = "CryovikingBlue_2" },
    -- rustCommentLineDoc = { link = "Comment" },
    -- rustDefault = { link = "CryovikingBrightAqua" },

    -- -- ocaml
    -- ocamlOperator = { link = "CryovikingBlue_1" },
    -- ocamlKeyChar = { link = "CryovikingBrightOrange" },
    -- ocamlArrow = { link = "CryovikingBrightOrange" },
    -- ocamlInfixOpKeyword = { link = "CryovikingBrightRed" },
    -- ocamlConstructor = { link = "CryovikingBrightOrange" },

    -- -- lspsaga.nvim
    -- LspSagaCodeActionTitle = { link = "Title" },
    -- LspSagaCodeActionBorder = { link = "CryovikingBlue_1" },
    -- LspSagaCodeActionContent = { fg = colors.bright_green, bold = config.bold },
    -- LspSagaLspFinderBorder = { link = "CryovikingBlue_1" },
    -- LspSagaAutoPreview = { link = "CryovikingBrightOrange" },
    -- TargetWord = { fg = colors.bright_blue, bold = config.bold },
    -- FinderSeparator = { link = "CryovikingBrightAqua" },
    -- LspSagaDefPreviewBorder = { link = "CryovikingBrightBlue" },
    -- LspSagaHoverBorder = { link = "CryovikingBrightOrange" },
    -- LspSagaRenameBorder = { link = "CryovikingBrightBlue" },
    -- LspSagaDiagnosticSource = { link = "CryovikingBrightOrange" },
    -- LspSagaDiagnosticBorder = { link = "CryovikingBrightPurple" },
    -- LspSagaDiagnosticHeader = { link = "CryoVikingGreen_1" },
    -- LspSagaSignatureHelpBorder = { link = "CryoVikingGreen_1" },
    -- SagaShadow = { link = "CryovikingBg0" },

    -- dashboard-nvim
    DashboardShortCut = { link = "CryovikingBrightOrange" },
    DashboardHeader = { link = "CryovikingBrightAqua" },
    DashboardCenter = { link = "CryovikingBrightYellow" },
    DashboardFooter = { fg = colors.bright_purple, italic = true },

    -- mason
    MasonHighlight = { link = "CryovikingBrightAqua" },
    MasonHighlightBlock = { fg = colors.bg0, bg = colors.bright_blue },
    MasonHighlightBlockBold = { fg = colors.bg0, bg = colors.bright_blue, bold = true },
    MasonHighlightSecondary = { fg = colors.bright_yellow },
    MasonHighlightBlockSecondary = { fg = colors.bg0, bg = colors.bright_yellow },
    MasonHighlightBlockBoldSecondary = { fg = colors.bg0, bg = colors.bright_yellow, bold = true },
    MasonHeader = { link = "MasonHighlightBlockBoldSecondary" },
    MasonHeaderSecondary = { link = "MasonHighlightBlockBold" },
    MasonMuted = { fg = colors.blue_4 },
    MasonMutedBlock = { fg = colors.bg0, bg = colors.blue_4 },
    MasonMutedBlockBold = { fg = colors.bg0, bg = colors.blue_4, bold = true },
    -- lsp-inlayhints.nvim
    LspInlayHint = { link = "comment" },

    -- -- carbon.nvim
    -- CarbonFile = { link = "CryovikingBlue_1" },
    -- CarbonExe = { link = "CryovikingBrightYellow" },
    -- CarbonSymlink = { link = "CryovikingBrightAqua" },
    -- CarbonBrokenSymlink = { link = "CryovikingBrightRed" },
    -- CarbonIndicator = { link = "CryovikingGrey" },
    -- CarbonDanger = { link = "CryovikingBrightRed" },
    -- CarbonPending = { link = "CryovikingBrightYellow" },

    -- noice.nvim
    NoiceCursor = { link = "TermCursor" },

    -- notify.nvim
    NotifyDEBUGBorder = { link = "CryovikingBrightBlue" },
    NotifyDEBUGIcon = { link = "CryovikingBrightBlue" },
    NotifyDEBUGTitle = { link = "CryovikingBrightBlue" },
    NotifyERRORBorder = { link = "CryovikingBrightRed" },
    NotifyERRORIcon = { link = "CryovikingBrightRed" },
    NotifyERRORTitle = { link = "CryovikingBrightRed" },
    NotifyINFOBorder = { link = "CryovikingBrightAqua" },
    NotifyINFOIcon = { link = "CryovikingBrightAqua" },
    NotifyINFOTitle = { link = "CryovikingBrightAqua" },
    NotifyTRACEBorder = { link = "CryoVikingGreen_1" },
    NotifyTRACEIcon = { link = "CryoVikingGreen_1" },
    NotifyTRACETitle = { link = "CryoVikingGreen_1" },
    NotifyWARNBorder = { link = "CryovikingBrightYellow" },
    NotifyWARNIcon = { link = "CryovikingBrightYellow" },
    NotifyWARNTitle = { link = "CryovikingBrightYellow" },

    -- vim-illuminate
    IlluminatedWordText = { link = "LspReferenceText" },
    IlluminatedWordRead = { link = "LspReferenceRead" },
    IlluminatedWordWrite = { link = "LspReferenceWrite" },

    -- -- ts-rainbow2 (maintained fork)
    -- TSRainbowBrightRed = { fg = colors.bright_red },
    -- TSRainbowBrightOrange = { fg = colors.bright_orange },
    -- TSRainbowBrightYellow = { fg = colors.bright_yellow },
    -- TSRainbowBrightGreen = { fg = colors.bright_green },
    -- TSRainbowBrightBlue = { fg = colors.bright_blue },
    -- TSRainbowViolet = { fg = colors.bright_purple },
    -- TSRainbowCyan = { fg = colors.cyan },

    -- -- nvim-dap-ui
    -- DapBreakpointSymbol = { fg = colors.bright_red, bg = colors.bg1 },
    -- DapStoppedSymbol = { fg = colors.bright_green, bg = colors.bg1 },
    -- DapUIBreakpointsCurrentLine = { link = "CryovikingBrightYellow" },
    -- DapUIBreakpointsDisabledLine = { link = "CryovikingGrey" },
    -- DapUIBreakpointsInfo = { link = "CryovikingBrightAqua" },
    -- DapUIBreakpointsLine = { link = "CryovikingBrightYellow" },
    -- DapUIBreakpointsPath = { link = "CryovikingBrightBlue" },
    -- DapUICurrentFrameName = { link = "CryovikingBrightPurple" },
    -- DapUIDecoration = { link = "CryovikingBrightPurple" },
    -- DapUIEndofBuffer = { link = "CryovikingBg2" },
    -- DapUIFloatBorder = { link = "CryovikingBrightAqua" },
    -- DapUILineNumber = { link = "CryovikingBrightYellow" },
    -- DapUIModifiedValue = { link = "CryovikingBrightRed" },
    -- DapUIPlayPause = { link = "CryoVikingGreen_1" },
    -- DapUIRestart = { link = "CryoVikingGreen_1" },
    -- DapUIScope = { link = "CryovikingBrightBlue" },
    -- DapUISource = { link = "CryovikingBlue_1" },
    -- DapUIStepBack = { link = "CryovikingBrightBlue" },
    -- DapUIStepInto = { link = "CryovikingBrightBlue" },
    -- DapUIStepOut = { link = "CryovikingBrightBlue" },
    -- DapUIStepOver = { link = "CryovikingBrightBlue" },
    -- DapUIStop = { link = "CryovikingBrightRed" },
    -- DapUIStoppedThread = { link = "CryovikingBrightBlue" },
    -- DapUIThread = { link = "CryovikingBrightBlue" },
    -- DapUIType = { link = "CryovikingBrightOrange" },
    -- DapUIUnavailable = { link = "CryovikingGrey" },
    -- DapUIWatchesEmpty = { link = "CryovikingGrey" },
    -- DapUIWatchesError = { link = "CryovikingBrightRed" },
    -- DapUIWatchesValue = { link = "CryovikingBrightYellow" },
    -- DapUIWinSelect = { link = "CryovikingBrightYellow" },
  }

  for group, hl in pairs(config.overrides) do
    if groups[group] then
      -- "link" should not mix with other configs (:h hi-link)
      groups[group].link = nil
    end

    groups[group] = vim.tbl_extend("force", groups[group] or {}, hl)
  end

  return groups
end


return M
