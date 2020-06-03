import CSDL2
let scanCodeMask:Uint32 = 1<<30

@inline(__always) 
func scanCodeToKeyCode(_ code: UInt32) -> Int {
    return Int(code | scanCodeMask)
}

struct KeyCode: OptionSet {
    let rawValue : Int
    init(rawValue: Int) {
        self.rawValue = rawValue
    }

    static let `return` = KeyCode(rawValue: SDLK_RETURN)
    static let escape = KeyCode(rawValue: SDLK_ESCAPE)
    static let backspace = KeyCode(rawValue: SDLK_BACKSPACE)
    static let tab = KeyCode(rawValue: SDLK_TAB)
    static let space = KeyCode(rawValue: SDLK_SPACE)
    static let exclamation = KeyCode(rawValue: SDLK_EXCLAIM)
    static let doubleQuote = KeyCode(rawValue: SDLK_QUOTEDBL)
    static let hash = KeyCode(rawValue: SDLK_HASH)
    static let percent = KeyCode(rawValue: SDLK_PERCENT)
    static let dollar = KeyCode(rawValue: SDLK_DOLLAR)
    static let ampersand = KeyCode(rawValue: SDLK_AMPERSAND)
    static let singleQuote = KeyCode(rawValue: SDLK_QUOTE)
    static let leftParen = KeyCode(rawValue: SDLK_LEFTPAREN)
    static let rightParen = KeyCode(rawValue: SDLK_RIGHTPAREN)
    static let asterix  = KeyCode(rawValue: SDLK_ASTERISK)
    static let plus = KeyCode(rawValue: SDLK_PLUS)
    static let comma = KeyCode(rawValue: SDLK_COMMA)
    static let minus = KeyCode(rawValue: SDLK_MINUS)
    static let period = KeyCode(rawValue: SDLK_PERIOD)
    static let slash = KeyCode(rawValue: SDLK_SLASH)

    static let zero = KeyCode(rawValue: SDLK_0)
    static let one = KeyCode(rawValue: SDLK_1)
    static let two = KeyCode(rawValue: SDLK_2)
    static let three = KeyCode(rawValue: SDLK_3)
    static let four = KeyCode(rawValue: SDLK_4)
    static let five = KeyCode(rawValue: SDLK_5)
    static let six = KeyCode(rawValue: SDLK_6)
    static let seven = KeyCode(rawValue: SDLK_7)
    static let eight = KeyCode(rawValue: SDLK_8)
    static let nine = KeyCode(rawValue: SDLK_9)

    static let colon = KeyCode(rawValue: SDLK_COLON)
    static let semiColon = KeyCode(rawValue: SDLK_SEMICOLON)
    static let lessThan = KeyCode(rawValue: SDLK_LESS)
    static let equals = KeyCode(rawValue: SDLK_EQUALS)
    static let greaterThan = KeyCode(rawValue: SDLK_GREATER)
    static let questionMark = KeyCode(rawValue: SDLK_QUESTION)
    static let at = KeyCode(rawValue: SDLK_AT)
    static let leftBracket = KeyCode(rawValue:SDLK_LEFTBRACKET)
    static let backslash = KeyCode(rawValue:SDLK_BACKSLASH)
    static let rightBracket = KeyCode(rawValue:SDLK_RIGHTBRACKET)
    static let caret = KeyCode(rawValue:SDLK_CARET)
    static let underscore = KeyCode(rawValue:SDLK_UNDERSCORE)
    static let backquote = KeyCode(rawValue:SDLK_BACKQUOTE)

    static let A = KeyCode(rawValue:SDLK_a)
    static let B = KeyCode(rawValue:SDLK_b)
    static let C = KeyCode(rawValue:SDLK_c)
    static let D = KeyCode(rawValue:SDLK_d)
    static let E = KeyCode(rawValue:SDLK_e)
    static let F = KeyCode(rawValue:SDLK_f)
    static let G = KeyCode(rawValue:SDLK_g)
    static let H = KeyCode(rawValue:SDLK_h)
    static let I = KeyCode(rawValue:SDLK_i)
    static let J = KeyCode(rawValue:SDLK_j)
    static let K = KeyCode(rawValue:SDLK_k)
    static let L = KeyCode(rawValue:SDLK_l)
    static let M = KeyCode(rawValue:SDLK_m)
    static let N = KeyCode(rawValue:SDLK_n)
    static let O = KeyCode(rawValue:SDLK_o)
    static let P = KeyCode(rawValue:SDLK_p)
    static let Q = KeyCode(rawValue:SDLK_q)
    static let R = KeyCode(rawValue:SDLK_r)
    static let S = KeyCode(rawValue:SDLK_s)
    static let T = KeyCode(rawValue:SDLK_t)
    static let U = KeyCode(rawValue:SDLK_u)
    static let V = KeyCode(rawValue:SDLK_v)
    static let W = KeyCode(rawValue:SDLK_w)
    static let X = KeyCode(rawValue:SDLK_x)
    static let Y = KeyCode(rawValue:SDLK_y)
    static let Z = KeyCode(rawValue:SDLK_z)

    static let capsLock = scanCodeToKeyCode(SDL_SCANCODE_CAPSLOCK.rawValue)

    static let F1 = scanCodeToKeyCode(SDL_SCANCODE_F1.rawValue)
    static let F2 = scanCodeToKeyCode(SDL_SCANCODE_F2.rawValue)
    static let F3 = scanCodeToKeyCode(SDL_SCANCODE_F3.rawValue)
    static let F4 = scanCodeToKeyCode(SDL_SCANCODE_F4.rawValue)
    static let F5 = scanCodeToKeyCode(SDL_SCANCODE_F5.rawValue)
    static let F6 = scanCodeToKeyCode(SDL_SCANCODE_F6.rawValue)
    static let F7 = scanCodeToKeyCode(SDL_SCANCODE_F7.rawValue)
    static let F8 = scanCodeToKeyCode(SDL_SCANCODE_F8.rawValue)
    static let F9 = scanCodeToKeyCode(SDL_SCANCODE_F9.rawValue)
    static let F10 = scanCodeToKeyCode(SDL_SCANCODE_F10.rawValue)
    static let F11 = scanCodeToKeyCode(SDL_SCANCODE_F11.rawValue)
    static let F12 = scanCodeToKeyCode(SDL_SCANCODE_F12.rawValue)

    static let printScreen = scanCodeToKeyCode(SDL_SCANCODE_PRINTSCREEN.rawValue)
    static let scrollLock = scanCodeToKeyCode(SDL_SCANCODE_SCROLLLOCK.rawValue)
    static let pause = scanCodeToKeyCode(SDL_SCANCODE_PAUSE.rawValue)
    static let insert = scanCodeToKeyCode(SDL_SCANCODE_INSERT.rawValue)
    static let home = scanCodeToKeyCode(SDL_SCANCODE_HOME.rawValue)
    static let pageUp = scanCodeToKeyCode(SDL_SCANCODE_PAGEUP.rawValue)
    static let delete = KeyCode(rawValue:SDLK_DELETE)
    static let end = scanCodeToKeyCode(SDL_SCANCODE_END.rawValue)
    static let pageDown = scanCodeToKeyCode(SDL_SCANCODE_PAGEDOWN.rawValue)
    static let right = scanCodeToKeyCode(SDL_SCANCODE_RIGHT.rawValue)
    static let left = scanCodeToKeyCode(SDL_SCANCODE_LEFT.rawValue)
    static let down = scanCodeToKeyCode(SDL_SCANCODE_DOWN.rawValue)
    static let up = scanCodeToKeyCode(SDL_SCANCODE_UP.rawValue)

// TODO: Finish renaming
    static let numLockClear = scanCodeToKeyCode(SDL_SCANCODE_NUMLOCKCLEAR.rawValue)
    static let keyPadDivide = scanCodeToKeyCode(SDL_SCANCODE_KP_DIVIDE.rawValue)
    static let keyPadMultiply = scanCodeToKeyCode(SDL_SCANCODE_KP_MULTIPLY.rawValue)
    static let keyPadMinus = scanCodeToKeyCode(SDL_SCANCODE_KP_MINUS.rawValue)
    static let keyPadPlus = scanCodeToKeyCode(SDL_SCANCODE_KP_PLUS.rawValue)
    static let keyPadEnter = scanCodeToKeyCode(SDL_SCANCODE_KP_ENTER.rawValue)
    static let keyPad1 = scanCodeToKeyCode(SDL_SCANCODE_KP_1.rawValue)
    static let keyPad2 = scanCodeToKeyCode(SDL_SCANCODE_KP_2.rawValue)
    static let keyPad3 = scanCodeToKeyCode(SDL_SCANCODE_KP_3.rawValue)
    static let keyPad4 = scanCodeToKeyCode(SDL_SCANCODE_KP_4.rawValue)
    static let keyPad5 = scanCodeToKeyCode(SDL_SCANCODE_KP_5.rawValue)
    static let keyPad6 = scanCodeToKeyCode(SDL_SCANCODE_KP_6.rawValue)
    static let keyPad7 = scanCodeToKeyCode(SDL_SCANCODE_KP_7.rawValue)
    static let keyPad8 = scanCodeToKeyCode(SDL_SCANCODE_KP_8.rawValue)
    static let keyPad9 = scanCodeToKeyCode(SDL_SCANCODE_KP_9.rawValue)
    static let keyPad0 = scanCodeToKeyCode(SDL_SCANCODE_KP_0.rawValue)
    static let keyPadPeriod = scanCodeToKeyCode(SDL_SCANCODE_KP_PERIOD.rawValue)
    static let keyPadEquals = scanCodeToKeyCode(SDL_SCANCODE_KP_EQUALS.rawValue)
    static let keyPadComma = scanCodeToKeyCode(SDL_SCANCODE_KP_COMMA.rawValue)
    static let keyPadEqualsAs400 = scanCodeToKeyCode(SDL_SCANCODE_KP_EQUALSAS400.rawValue)

    static let Application = scanCodeToKeyCode(SDL_SCANCODE_APPLICATION.rawValue)
    static let Power = scanCodeToKeyCode(SDL_SCANCODE_POWER.rawValue)
    static let F13 = scanCodeToKeyCode(SDL_SCANCODE_F13.rawValue)
    static let F14 = scanCodeToKeyCode(SDL_SCANCODE_F14.rawValue)
    static let F15 = scanCodeToKeyCode(SDL_SCANCODE_F15.rawValue)
    static let F16 = scanCodeToKeyCode(SDL_SCANCODE_F16.rawValue)
    static let F17 = scanCodeToKeyCode(SDL_SCANCODE_F17.rawValue)
    static let F18 = scanCodeToKeyCode(SDL_SCANCODE_F18.rawValue)
    static let F19 = scanCodeToKeyCode(SDL_SCANCODE_F19.rawValue)
    static let F20 = scanCodeToKeyCode(SDL_SCANCODE_F20.rawValue)
    static let F21 = scanCodeToKeyCode(SDL_SCANCODE_F21.rawValue)
    static let F22 = scanCodeToKeyCode(SDL_SCANCODE_F22.rawValue)
    static let F23 = scanCodeToKeyCode(SDL_SCANCODE_F23.rawValue)
    static let F24 = scanCodeToKeyCode(SDL_SCANCODE_F24.rawValue)
    static let execute = scanCodeToKeyCode(SDL_SCANCODE_EXECUTE.rawValue)
    static let help = scanCodeToKeyCode(SDL_SCANCODE_HELP.rawValue)
    static let menu = scanCodeToKeyCode(SDL_SCANCODE_MENU.rawValue)
    static let select = scanCodeToKeyCode(SDL_SCANCODE_SELECT.rawValue)
    static let stop = scanCodeToKeyCode(SDL_SCANCODE_STOP.rawValue)
    static let again = scanCodeToKeyCode(SDL_SCANCODE_AGAIN.rawValue)
    static let undo = scanCodeToKeyCode(SDL_SCANCODE_UNDO.rawValue)
    static let cut = scanCodeToKeyCode(SDL_SCANCODE_CUT.rawValue)
    static let copy = scanCodeToKeyCode(SDL_SCANCODE_COPY.rawValue)
    static let paste = scanCodeToKeyCode(SDL_SCANCODE_PASTE.rawValue)
    static let find = scanCodeToKeyCode(SDL_SCANCODE_FIND.rawValue)
    static let mute = scanCodeToKeyCode(SDL_SCANCODE_MUTE.rawValue)
    static let volumeUp = scanCodeToKeyCode(SDL_SCANCODE_VOLUMEUP.rawValue)
    static let volumeDown = scanCodeToKeyCode(SDL_SCANCODE_VOLUMEDOWN.rawValue)


    static let alterase = scanCodeToKeyCode(SDL_SCANCODE_ALTERASE.rawValue)
    static let sysreq = scanCodeToKeyCode(SDL_SCANCODE_SYSREQ.rawValue)
    static let cancel = scanCodeToKeyCode(SDL_SCANCODE_CANCEL.rawValue)
    static let clear = scanCodeToKeyCode(SDL_SCANCODE_CLEAR.rawValue)
    static let prior = scanCodeToKeyCode(SDL_SCANCODE_PRIOR.rawValue)
    static let return2 = scanCodeToKeyCode(SDL_SCANCODE_RETURN2.rawValue)
    static let separator = scanCodeToKeyCode(SDL_SCANCODE_SEPARATOR.rawValue)
    static let out = scanCodeToKeyCode(SDL_SCANCODE_OUT.rawValue)
    static let oper = scanCodeToKeyCode(SDL_SCANCODE_OPER.rawValue)
    static let clearagain = scanCodeToKeyCode(SDL_SCANCODE_CLEARAGAIN.rawValue)
    static let crsel = scanCodeToKeyCode(SDL_SCANCODE_CRSEL.rawValue)
    static let exsel = scanCodeToKeyCode(SDL_SCANCODE_EXSEL.rawValue)

    static let keyPad00 = scanCodeToKeyCode(SDL_SCANCODE_KP_00.rawValue)
    static let keyPad000 = scanCodeToKeyCode(SDL_SCANCODE_KP_000.rawValue)
    static let thousandsSeparator = scanCodeToKeyCode(SDL_SCANCODE_THOUSANDSSEPARATOR.rawValue)
    static let decimalSeparator = scanCodeToKeyCode(SDL_SCANCODE_DECIMALSEPARATOR.rawValue)
    static let currencyUnit = scanCodeToKeyCode(SDL_SCANCODE_CURRENCYUNIT.rawValue)
    static let currencySubunit = scanCodeToKeyCode(SDL_SCANCODE_CURRENCYSUBUNIT.rawValue)
    static let keyPadLeftParen = scanCodeToKeyCode(SDL_SCANCODE_KP_LEFTPAREN.rawValue)
    static let keyPadRightParen = scanCodeToKeyCode(SDL_SCANCODE_KP_RIGHTPAREN.rawValue)
    static let keyPadLeftBrace = scanCodeToKeyCode(SDL_SCANCODE_KP_LEFTBRACE.rawValue)
    static let keyPadRightBrace = scanCodeToKeyCode(SDL_SCANCODE_KP_RIGHTBRACE.rawValue)
    static let keyPadTab = scanCodeToKeyCode(SDL_SCANCODE_KP_TAB.rawValue)
    static let keyPadBackspace = scanCodeToKeyCode(SDL_SCANCODE_KP_BACKSPACE.rawValue)
    static let keyPadA = scanCodeToKeyCode(SDL_SCANCODE_KP_A.rawValue)
    static let keyPadB = scanCodeToKeyCode(SDL_SCANCODE_KP_B.rawValue)
    static let keyPadC = scanCodeToKeyCode(SDL_SCANCODE_KP_C.rawValue)
    static let keyPadD = scanCodeToKeyCode(SDL_SCANCODE_KP_D.rawValue)
    static let keyPadE = scanCodeToKeyCode(SDL_SCANCODE_KP_E.rawValue)
    static let keyPadF = scanCodeToKeyCode(SDL_SCANCODE_KP_F.rawValue)
    static let keyPadXor = scanCodeToKeyCode(SDL_SCANCODE_KP_XOR.rawValue)
    static let keyPadPower = scanCodeToKeyCode(SDL_SCANCODE_KP_POWER.rawValue)
    static let keyPadPercentT = scanCodeToKeyCode(SDL_SCANCODE_KP_PERCENT.rawValue)
    static let keyPadLess = scanCodeToKeyCode(SDL_SCANCODE_KP_LESS.rawValue)
    static let keyPadGreater = scanCodeToKeyCode(SDL_SCANCODE_KP_GREATER.rawValue)
    static let keyPadAmpersand = scanCodeToKeyCode(SDL_SCANCODE_KP_AMPERSAND.rawValue)
    static let keyPadDoubleAmpersand = scanCodeToKeyCode(SDL_SCANCODE_KP_DBLAMPERSAND.rawValue)
    static let keyPadVerticalBar = scanCodeToKeyCode(SDL_SCANCODE_KP_VERTICALBAR.rawValue)
    static let keyPadDoubleVerticalBar = scanCodeToKeyCode(SDL_SCANCODE_KP_DBLVERTICALBAR.rawValue)
    static let keyPadColon = scanCodeToKeyCode(SDL_SCANCODE_KP_COLON.rawValue)
    static let keyPadHash = scanCodeToKeyCode(SDL_SCANCODE_KP_HASH.rawValue)
    static let keyPadSpace = scanCodeToKeyCode(SDL_SCANCODE_KP_SPACE.rawValue)
    static let keyPadAt = scanCodeToKeyCode(SDL_SCANCODE_KP_AT.rawValue)
    static let keyPadExclamation = scanCodeToKeyCode(SDL_SCANCODE_KP_EXCLAM.rawValue)
    static let keyPadMemStore = scanCodeToKeyCode(SDL_SCANCODE_KP_MEMSTORE.rawValue)
    static let keyPadMemRecalL = scanCodeToKeyCode(SDL_SCANCODE_KP_MEMRECALL.rawValue)
    static let keyPadMemClear = scanCodeToKeyCode(SDL_SCANCODE_KP_MEMCLEAR.rawValue)
    static let keyPadMemAdd = scanCodeToKeyCode(SDL_SCANCODE_KP_MEMADD.rawValue)
    static let keyPadMemSubtract = scanCodeToKeyCode(SDL_SCANCODE_KP_MEMSUBTRACT.rawValue)
    static let keyPadMemMultiply = scanCodeToKeyCode(SDL_SCANCODE_KP_MEMMULTIPLY.rawValue)
    static let keyPadMemDivide = scanCodeToKeyCode(SDL_SCANCODE_KP_MEMDIVIDE.rawValue)
    static let keyPadPlusMinus = scanCodeToKeyCode(SDL_SCANCODE_KP_PLUSMINUS.rawValue)
    static let keyPadClear = scanCodeToKeyCode(SDL_SCANCODE_KP_CLEAR.rawValue)
    static let keyPadClearEntry = scanCodeToKeyCode(SDL_SCANCODE_KP_CLEARENTRY.rawValue)
    static let keyPadBinary = scanCodeToKeyCode(SDL_SCANCODE_KP_BINARY.rawValue)
    static let keyPadOctal = scanCodeToKeyCode(SDL_SCANCODE_KP_OCTAL.rawValue)
    static let keyPadDecimal = scanCodeToKeyCode(SDL_SCANCODE_KP_DECIMAL.rawValue)
    static let keyPadHexaDecimal = scanCodeToKeyCode(SDL_SCANCODE_KP_HEXADECIMAL.rawValue)

    static let leftCtrl = scanCodeToKeyCode(SDL_SCANCODE_LCTRL.rawValue)
    static let leftShift = scanCodeToKeyCode(SDL_SCANCODE_LSHIFT.rawValue)
    static let leftAlt = scanCodeToKeyCode(SDL_SCANCODE_LALT.rawValue)
    static let leftGUI = scanCodeToKeyCode(SDL_SCANCODE_LGUI.rawValue)
    static let rightCtrl = scanCodeToKeyCode(SDL_SCANCODE_RCTRL.rawValue)
    static let rightShift = scanCodeToKeyCode(SDL_SCANCODE_RSHIFT.rawValue)
    static let rightAlt = scanCodeToKeyCode(SDL_SCANCODE_RALT.rawValue)
    static let rightGUI = scanCodeToKeyCode(SDL_SCANCODE_RGUI.rawValue)

    static let mode = scanCodeToKeyCode(SDL_SCANCODE_MODE.rawValue)

    static let audioNext = scanCodeToKeyCode(SDL_SCANCODE_AUDIONEXT.rawValue)
    static let audioPrev = scanCodeToKeyCode(SDL_SCANCODE_AUDIOPREV.rawValue)
    static let audioStop = scanCodeToKeyCode(SDL_SCANCODE_AUDIOSTOP.rawValue)
    static let audioPlay = scanCodeToKeyCode(SDL_SCANCODE_AUDIOPLAY.rawValue)
    static let audioMute = scanCodeToKeyCode(SDL_SCANCODE_AUDIOMUTE.rawValue)
    static let mediaSelect = scanCodeToKeyCode(SDL_SCANCODE_MEDIASELECT.rawValue)
    static let www = scanCodeToKeyCode(SDL_SCANCODE_WWW.rawValue)
    static let mail = scanCodeToKeyCode(SDL_SCANCODE_MAIL.rawValue)
    static let calculator = scanCodeToKeyCode(SDL_SCANCODE_CALCULATOR.rawValue)
    static let computer = scanCodeToKeyCode(SDL_SCANCODE_COMPUTER.rawValue)
    static let acSearch = scanCodeToKeyCode(SDL_SCANCODE_AC_SEARCH.rawValue)
    static let acHome = scanCodeToKeyCode(SDL_SCANCODE_AC_HOME.rawValue)
    static let acBack = scanCodeToKeyCode(SDL_SCANCODE_AC_BACK.rawValue)
    static let acForward = scanCodeToKeyCode(SDL_SCANCODE_AC_FORWARD.rawValue)
    static let acStop = scanCodeToKeyCode(SDL_SCANCODE_AC_STOP.rawValue)
    static let acRefresh = scanCodeToKeyCode(SDL_SCANCODE_AC_REFRESH.rawValue)
    static let acBookmarks = scanCodeToKeyCode(SDL_SCANCODE_AC_BOOKMARKS.rawValue)

    static let brightnessDown = scanCodeToKeyCode(SDL_SCANCODE_BRIGHTNESSDOWN.rawValue)
    static let brightnessUp = scanCodeToKeyCode(SDL_SCANCODE_BRIGHTNESSUP.rawValue)
    static let displaySwitch = scanCodeToKeyCode(SDL_SCANCODE_DISPLAYSWITCH.rawValue)
    static let illumToggle = scanCodeToKeyCode(SDL_SCANCODE_KBDILLUMTOGGLE.rawValue)
    static let illumDown = scanCodeToKeyCode(SDL_SCANCODE_KBDILLUMDOWN.rawValue)
    static let illumUp = scanCodeToKeyCode(SDL_SCANCODE_KBDILLUMUP.rawValue)
    static let eject = scanCodeToKeyCode(SDL_SCANCODE_EJECT.rawValue)
    static let sleep = scanCodeToKeyCode(SDL_SCANCODE_SLEEP.rawValue)
    static let app1 = scanCodeToKeyCode(SDL_SCANCODE_APP1.rawValue)
    static let app2 = scanCodeToKeyCode(SDL_SCANCODE_APP2.rawValue)

    static let audioRewind = scanCodeToKeyCode(SDL_SCANCODE_AUDIOREWIND.rawValue)
    static let audioFastForward = scanCodeToKeyCode(SDL_SCANCODE_AUDIOFASTFORWARD.rawValue)
}

struct KeyMod: OptionSet {
    let rawValue : UInt32
    init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    static let none       = KeyMod(rawValue: KMOD_NONE.rawValue)
    static let leftShift  = KeyMod(rawValue: KMOD_LSHIFT.rawValue)
    static let rightShift = KeyMod(rawValue: KMOD_RSHIFT.rawValue)
    static let leftCtrl   = KeyMod(rawValue: KMOD_LCTRL.rawValue)
    static let rightCtrl  = KeyMod(rawValue: KMOD_RCTRL.rawValue)
    static let leftAlt    = KeyMod(rawValue: KMOD_LALT.rawValue)
    static let rightAlt   = KeyMod(rawValue: KMOD_RALT.rawValue)
    static let leftGUI    = KeyMod(rawValue: KMOD_LGUI.rawValue)
    static let rightGUI   = KeyMod(rawValue: KMOD_RGUI.rawValue)
    static let numLock    = KeyMod(rawValue: KMOD_NUM.rawValue)
    static let capsLock   = KeyMod(rawValue: KMOD_CAPS.rawValue)
    static let mode       = KeyMod(rawValue: KMOD_MODE.rawValue)
    static let reserved   = KeyMod(rawValue: KMOD_RESERVED.rawValue)
    
    static let ctrl       = KeyMod(rawValue: KMOD_LCTRL.rawValue | KMOD_RCTRL.rawValue)
    static let shift      = KeyMod(rawValue: KMOD_LSHIFT.rawValue | KMOD_RSHIFT.rawValue)
    static let alt        = KeyMod(rawValue: KMOD_LALT.rawValue | KMOD_RALT.rawValue)
    static let GUI        = KeyMod(rawValue: KMOD_LGUI.rawValue | KMOD_RGUI.rawValue)

}

