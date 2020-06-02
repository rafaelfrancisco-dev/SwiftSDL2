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

    static let a = KeyCode(rawValue:SDLK_a)
    static let b = KeyCode(rawValue:SDLK_b)
    static let c = KeyCode(rawValue:SDLK_c)
    static let d = KeyCode(rawValue:SDLK_d)
    static let e = KeyCode(rawValue:SDLK_e)
    static let f = KeyCode(rawValue:SDLK_f)
    static let g = KeyCode(rawValue:SDLK_g)
    static let h = KeyCode(rawValue:SDLK_h)
    static let i = KeyCode(rawValue:SDLK_i)
    static let j = KeyCode(rawValue:SDLK_j)
    static let k = KeyCode(rawValue:SDLK_k)
    static let l = KeyCode(rawValue:SDLK_l)
    static let m = KeyCode(rawValue:SDLK_m)
    static let n = KeyCode(rawValue:SDLK_n)
    static let o = KeyCode(rawValue:SDLK_o)
    static let p = KeyCode(rawValue:SDLK_p)
    static let q = KeyCode(rawValue:SDLK_q)
    static let r = KeyCode(rawValue:SDLK_r)
    static let s = KeyCode(rawValue:SDLK_s)
    static let t = KeyCode(rawValue:SDLK_t)
    static let u = KeyCode(rawValue:SDLK_u)
    static let v = KeyCode(rawValue:SDLK_v)
    static let w = KeyCode(rawValue:SDLK_w)
    static let x = KeyCode(rawValue:SDLK_x)
    static let y = KeyCode(rawValue:SDLK_y)
    static let z = KeyCode(rawValue:SDLK_z)

    static let CAPSLOCK = scanCodeToKeyCode(SDL_SCANCODE_CAPSLOCK.rawValue)

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
    static let NUMLOCKCLEAR = scanCodeToKeyCode(SDL_SCANCODE_NUMLOCKCLEAR.rawValue)
    static let keyPadDIVIDE = scanCodeToKeyCode(SDL_SCANCODE_KP_DIVIDE.rawValue)
    static let keyPadMULTIPLY = scanCodeToKeyCode(SDL_SCANCODE_KP_MULTIPLY.rawValue)
    static let keyPadMINUS = scanCodeToKeyCode(SDL_SCANCODE_KP_MINUS.rawValue)
    static let keyPadPLUS = scanCodeToKeyCode(SDL_SCANCODE_KP_PLUS.rawValue)
    static let keyPadENTER = scanCodeToKeyCode(SDL_SCANCODE_KP_ENTER.rawValue)
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
    static let keyPadPERIOD = scanCodeToKeyCode(SDL_SCANCODE_KP_PERIOD.rawValue)

    static let APPLICATION = scanCodeToKeyCode(SDL_SCANCODE_APPLICATION.rawValue)
    static let POWER = scanCodeToKeyCode(SDL_SCANCODE_POWER.rawValue)
    static let KP_EQUALS = scanCodeToKeyCode(SDL_SCANCODE_KP_EQUALS.rawValue)
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
    static let EXECUTE = scanCodeToKeyCode(SDL_SCANCODE_EXECUTE.rawValue)
    static let HELP = scanCodeToKeyCode(SDL_SCANCODE_HELP.rawValue)
    static let MENU = scanCodeToKeyCode(SDL_SCANCODE_MENU.rawValue)
    static let SELECT = scanCodeToKeyCode(SDL_SCANCODE_SELECT.rawValue)
    static let STOP = scanCodeToKeyCode(SDL_SCANCODE_STOP.rawValue)
    static let AGAIN = scanCodeToKeyCode(SDL_SCANCODE_AGAIN.rawValue)
    static let UNDO = scanCodeToKeyCode(SDL_SCANCODE_UNDO.rawValue)
    static let CUT = scanCodeToKeyCode(SDL_SCANCODE_CUT.rawValue)
    static let COPY = scanCodeToKeyCode(SDL_SCANCODE_COPY.rawValue)
    static let PASTE = scanCodeToKeyCode(SDL_SCANCODE_PASTE.rawValue)
    static let FIND = scanCodeToKeyCode(SDL_SCANCODE_FIND.rawValue)
    static let MUTE = scanCodeToKeyCode(SDL_SCANCODE_MUTE.rawValue)
    static let VOLUMEUP = scanCodeToKeyCode(SDL_SCANCODE_VOLUMEUP.rawValue)
    static let VOLUMEDOWN = scanCodeToKeyCode(SDL_SCANCODE_VOLUMEDOWN.rawValue)
    static let KP_COMMA = scanCodeToKeyCode(SDL_SCANCODE_KP_COMMA.rawValue)
    static let KP_EQUALSAS400 =
        scanCodeToKeyCode(SDL_SCANCODE_KP_EQUALSAS400.rawValue)

    static let ALTERASE = scanCodeToKeyCode(SDL_SCANCODE_ALTERASE.rawValue)
    static let SYSREQ = scanCodeToKeyCode(SDL_SCANCODE_SYSREQ.rawValue)
    static let CANCEL = scanCodeToKeyCode(SDL_SCANCODE_CANCEL.rawValue)
    static let CLEAR = scanCodeToKeyCode(SDL_SCANCODE_CLEAR.rawValue)
    static let PRIOR = scanCodeToKeyCode(SDL_SCANCODE_PRIOR.rawValue)
    static let RETURN2 = scanCodeToKeyCode(SDL_SCANCODE_RETURN2.rawValue)
    static let SEPARATOR = scanCodeToKeyCode(SDL_SCANCODE_SEPARATOR.rawValue)
    static let OUT = scanCodeToKeyCode(SDL_SCANCODE_OUT.rawValue)
    static let OPER = scanCodeToKeyCode(SDL_SCANCODE_OPER.rawValue)
    static let CLEARAGAIN = scanCodeToKeyCode(SDL_SCANCODE_CLEARAGAIN.rawValue)
    static let CRSEL = scanCodeToKeyCode(SDL_SCANCODE_CRSEL.rawValue)
    static let EXSEL = scanCodeToKeyCode(SDL_SCANCODE_EXSEL.rawValue)

    static let KP_00 = scanCodeToKeyCode(SDL_SCANCODE_KP_00.rawValue)
    static let KP_000 = scanCodeToKeyCode(SDL_SCANCODE_KP_000.rawValue)
    static let THOUSANDSSEPARATOR =
        scanCodeToKeyCode(SDL_SCANCODE_THOUSANDSSEPARATOR.rawValue)
    static let DECIMALSEPARATOR =
        scanCodeToKeyCode(SDL_SCANCODE_DECIMALSEPARATOR.rawValue)
    static let CURRENCYUNIT = scanCodeToKeyCode(SDL_SCANCODE_CURRENCYUNIT.rawValue)
    static let CURRENCYSUBUNIT =
        scanCodeToKeyCode(SDL_SCANCODE_CURRENCYSUBUNIT.rawValue)
    static let KP_LEFTPAREN = scanCodeToKeyCode(SDL_SCANCODE_KP_LEFTPAREN.rawValue)
    static let KP_RIGHTPAREN = scanCodeToKeyCode(SDL_SCANCODE_KP_RIGHTPAREN.rawValue)
    static let KP_LEFTBRACE = scanCodeToKeyCode(SDL_SCANCODE_KP_LEFTBRACE.rawValue)
    static let KP_RIGHTBRACE = scanCodeToKeyCode(SDL_SCANCODE_KP_RIGHTBRACE.rawValue)
    static let KP_TAB = scanCodeToKeyCode(SDL_SCANCODE_KP_TAB.rawValue)
    static let KP_BACKSPACE = scanCodeToKeyCode(SDL_SCANCODE_KP_BACKSPACE.rawValue)
    static let KP_A = scanCodeToKeyCode(SDL_SCANCODE_KP_A.rawValue)
    static let KP_B = scanCodeToKeyCode(SDL_SCANCODE_KP_B.rawValue)
    static let KP_C = scanCodeToKeyCode(SDL_SCANCODE_KP_C.rawValue)
    static let KP_D = scanCodeToKeyCode(SDL_SCANCODE_KP_D.rawValue)
    static let KP_E = scanCodeToKeyCode(SDL_SCANCODE_KP_E.rawValue)
    static let KP_F = scanCodeToKeyCode(SDL_SCANCODE_KP_F.rawValue)
    static let KP_XOR = scanCodeToKeyCode(SDL_SCANCODE_KP_XOR.rawValue)
    static let KP_POWER = scanCodeToKeyCode(SDL_SCANCODE_KP_POWER.rawValue)
    static let KP_PERCENT = scanCodeToKeyCode(SDL_SCANCODE_KP_PERCENT.rawValue)
    static let KP_LESS = scanCodeToKeyCode(SDL_SCANCODE_KP_LESS.rawValue)
    static let KP_GREATER = scanCodeToKeyCode(SDL_SCANCODE_KP_GREATER.rawValue)
    static let KP_AMPERSAND = scanCodeToKeyCode(SDL_SCANCODE_KP_AMPERSAND.rawValue)
    static let KP_DBLAMPERSAND =
        scanCodeToKeyCode(SDL_SCANCODE_KP_DBLAMPERSAND.rawValue)
    static let KP_VERTICALBAR =
        scanCodeToKeyCode(SDL_SCANCODE_KP_VERTICALBAR.rawValue)
    static let KP_DBLVERTICALBAR =
        scanCodeToKeyCode(SDL_SCANCODE_KP_DBLVERTICALBAR.rawValue)
    static let KP_COLON = scanCodeToKeyCode(SDL_SCANCODE_KP_COLON.rawValue)
    static let KP_HASH = scanCodeToKeyCode(SDL_SCANCODE_KP_HASH.rawValue)
    static let KP_SPACE = scanCodeToKeyCode(SDL_SCANCODE_KP_SPACE.rawValue)
    static let KP_AT = scanCodeToKeyCode(SDL_SCANCODE_KP_AT.rawValue)
    static let KP_EXCLAM = scanCodeToKeyCode(SDL_SCANCODE_KP_EXCLAM.rawValue)
    static let KP_MEMSTORE = scanCodeToKeyCode(SDL_SCANCODE_KP_MEMSTORE.rawValue)
    static let KP_MEMRECALL = scanCodeToKeyCode(SDL_SCANCODE_KP_MEMRECALL.rawValue)
    static let KP_MEMCLEAR = scanCodeToKeyCode(SDL_SCANCODE_KP_MEMCLEAR.rawValue)
    static let KP_MEMADD = scanCodeToKeyCode(SDL_SCANCODE_KP_MEMADD.rawValue)
    static let KP_MEMSUBTRACT =
        scanCodeToKeyCode(SDL_SCANCODE_KP_MEMSUBTRACT.rawValue)
    static let KP_MEMMULTIPLY =
        scanCodeToKeyCode(SDL_SCANCODE_KP_MEMMULTIPLY.rawValue)
    static let KP_MEMDIVIDE = scanCodeToKeyCode(SDL_SCANCODE_KP_MEMDIVIDE.rawValue)
    static let KP_PLUSMINUS = scanCodeToKeyCode(SDL_SCANCODE_KP_PLUSMINUS.rawValue)
    static let KP_CLEAR = scanCodeToKeyCode(SDL_SCANCODE_KP_CLEAR.rawValue)
    static let KP_CLEARENTRY = scanCodeToKeyCode(SDL_SCANCODE_KP_CLEARENTRY.rawValue)
    static let KP_BINARY = scanCodeToKeyCode(SDL_SCANCODE_KP_BINARY.rawValue)
    static let KP_OCTAL = scanCodeToKeyCode(SDL_SCANCODE_KP_OCTAL.rawValue)
    static let KP_DECIMAL = scanCodeToKeyCode(SDL_SCANCODE_KP_DECIMAL.rawValue)
    static let KP_HEXADECIMAL =
        scanCodeToKeyCode(SDL_SCANCODE_KP_HEXADECIMAL.rawValue)

    static let LCTRL = scanCodeToKeyCode(SDL_SCANCODE_LCTRL.rawValue)
    static let LSHIFT = scanCodeToKeyCode(SDL_SCANCODE_LSHIFT.rawValue)
    static let LALT = scanCodeToKeyCode(SDL_SCANCODE_LALT.rawValue)
    static let LGUI = scanCodeToKeyCode(SDL_SCANCODE_LGUI.rawValue)
    static let RCTRL = scanCodeToKeyCode(SDL_SCANCODE_RCTRL.rawValue)
    static let RSHIFT = scanCodeToKeyCode(SDL_SCANCODE_RSHIFT.rawValue)
    static let RALT = scanCodeToKeyCode(SDL_SCANCODE_RALT.rawValue)
    static let RGUI = scanCodeToKeyCode(SDL_SCANCODE_RGUI.rawValue)

    static let MODE = scanCodeToKeyCode(SDL_SCANCODE_MODE.rawValue)

    static let AUDIONEXT = scanCodeToKeyCode(SDL_SCANCODE_AUDIONEXT.rawValue)
    static let AUDIOPREV = scanCodeToKeyCode(SDL_SCANCODE_AUDIOPREV.rawValue)
    static let AUDIOSTOP = scanCodeToKeyCode(SDL_SCANCODE_AUDIOSTOP.rawValue)
    static let AUDIOPLAY = scanCodeToKeyCode(SDL_SCANCODE_AUDIOPLAY.rawValue)
    static let AUDIOMUTE = scanCodeToKeyCode(SDL_SCANCODE_AUDIOMUTE.rawValue)
    static let MEDIASELECT = scanCodeToKeyCode(SDL_SCANCODE_MEDIASELECT.rawValue)
    static let WWW = scanCodeToKeyCode(SDL_SCANCODE_WWW.rawValue)
    static let MAIL = scanCodeToKeyCode(SDL_SCANCODE_MAIL.rawValue)
    static let CALCULATOR = scanCodeToKeyCode(SDL_SCANCODE_CALCULATOR.rawValue)
    static let COMPUTER = scanCodeToKeyCode(SDL_SCANCODE_COMPUTER.rawValue)
    static let AC_SEARCH = scanCodeToKeyCode(SDL_SCANCODE_AC_SEARCH.rawValue)
    static let AC_HOME = scanCodeToKeyCode(SDL_SCANCODE_AC_HOME.rawValue)
    static let AC_BACK = scanCodeToKeyCode(SDL_SCANCODE_AC_BACK.rawValue)
    static let AC_FORWARD = scanCodeToKeyCode(SDL_SCANCODE_AC_FORWARD.rawValue)
    static let AC_STOP = scanCodeToKeyCode(SDL_SCANCODE_AC_STOP.rawValue)
    static let AC_REFRESH = scanCodeToKeyCode(SDL_SCANCODE_AC_REFRESH.rawValue)
    static let AC_BOOKMARKS = scanCodeToKeyCode(SDL_SCANCODE_AC_BOOKMARKS.rawValue)

    static let BRIGHTNESSDOWN =
        scanCodeToKeyCode(SDL_SCANCODE_BRIGHTNESSDOWN.rawValue)
    static let BRIGHTNESSUP = scanCodeToKeyCode(SDL_SCANCODE_BRIGHTNESSUP.rawValue)
    static let DISPLAYSWITCH = scanCodeToKeyCode(SDL_SCANCODE_DISPLAYSWITCH.rawValue)
    static let KBDILLUMTOGGLE =
        scanCodeToKeyCode(SDL_SCANCODE_KBDILLUMTOGGLE.rawValue)
    static let KBDILLUMDOWN = scanCodeToKeyCode(SDL_SCANCODE_KBDILLUMDOWN.rawValue)
    static let KBDILLUMUP = scanCodeToKeyCode(SDL_SCANCODE_KBDILLUMUP.rawValue)
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

