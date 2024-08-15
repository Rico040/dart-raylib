import 'package:raylib/src/generated_bindings.dart' as raylib;

/// Keyboard keys (US keyboard layout).
///
/// NOTE: Use GetKeyPressed() to allow redefining required keys for alternative
/// layouts.
enum KeyboardKey {
  /// Key: none, used for no key pressed.
  none,

  /// Key: '.
  apostrophe,

  /// Key: ,.
  comma,

  /// Key: -.
  minus,

  /// Key: ..
  period,

  /// Key: /.
  slash,

  /// Key: 0.
  zero,

  /// Key: 1.
  one,

  /// Key: 2.
  two,

  /// Key: 3.
  three,

  /// Key: 4.
  four,

  /// Key: 5.
  five,

  /// Key: 6.
  six,

  /// Key: 7.
  seven,

  /// Key: 8.
  eight,

  /// Key: 9.
  nine,

  /// Key: ;.
  semicolon,

  /// Key: =.
  equal,

  /// Key: A | a.
  a,

  /// Key: B | b.
  b,

  /// Key: C | c.
  c,

  /// Key: D | d.
  d,

  /// Key: E | e.
  e,

  /// Key: F | f.
  f,

  /// Key: G | g.
  g,

  /// Key: H | h.
  h,

  /// Key: I | i.
  i,

  /// Key: J | j.
  j,

  /// Key: K | k.
  k,

  /// Key: L | l.
  l,

  /// Key: M | m.
  m,

  /// Key: N | n.
  n,

  /// Key: O | o.
  o,

  /// Key: P | p.
  p,

  /// Key: Q | q.
  q,

  /// Key: R | r.
  r,

  /// Key: S | s.
  s,

  /// Key: T | t.
  t,

  /// Key: U | u.
  u,

  /// Key: V | v.
  v,

  /// Key: W | w.
  w,

  /// Key: X | x.
  x,

  /// Key: Y | y.
  y,

  /// Key: Z | z.
  z,

  /// Key: [.
  leftBracket,

  /// Key: '\'.
  backSlash,

  /// Key: ].
  rightBracket,

  /// Key: `.
  grave,

  /// Key: Space.
  space,

  /// Key: Esc.
  escape,

  /// Key: Enter.
  enter,

  /// Key: Tab.
  tab,

  /// Key: Backspace.
  backspace,

  /// Key: Ins.
  insert,

  /// Key: Del.
  delete,

  /// Key: Cursor right.
  right,

  /// Key: Cursor left.
  left,

  /// Key: Cursor down.
  down,

  /// Key: Cursor up.
  up,

  /// Key: Page up.
  pageUp,

  /// Key: Page down.
  pageDown,

  /// Key: Home.
  home,

  /// Key: End.
  end,

  /// Key: Caps lock.
  capsLock,

  /// Key: Scroll down.
  scrollLock,

  /// Key: Num lock.
  numLock,

  /// Key: Print screen.
  printScreen,

  /// Key: Pause.
  pause,

  /// Key: F1.
  f1,

  /// Key: F2.
  f2,

  /// Key: F3.
  f3,

  /// Key: F4.
  f4,

  /// Key: F5.
  f5,

  /// Key: F6.
  f6,

  /// Key: F7.
  f7,

  /// Key: F8.
  f8,

  /// Key: F9.
  f9,

  /// Key: F10.
  f10,

  /// Key: F11.
  f11,

  /// Key: F12.
  f12,

  /// Key: Shift left.
  leftShift,

  /// Key: Control left.
  leftControl,

  /// Key: Alt left.
  leftAlt,

  /// Key: Super left.
  leftSuper,

  /// Key: Shift right.
  rightShift,

  /// Key: Control right.
  rightControl,

  /// Key: Alt right.
  rightAlt,

  /// Key: Super right.
  rightSuper,

  /// Key: KB menu.
  kbMenu,

  /// Key: Keypad 0.
  kp0,

  /// Key: Keypad 1.
  kp1,

  /// Key: Keypad 2.
  kp2,

  /// Key: Keypad 3.
  kp3,

  /// Key: Keypad 4.
  kp4,

  /// Key: Keypad 5.
  kp5,

  /// Key: Keypad 6.
  kp6,

  /// Key: Keypad 7.
  kp7,

  /// Key: Keypad 8.
  kp8,

  /// Key: Keypad 9.
  kp9,

  /// Key: Keypad ..
  kpDecimal,

  /// Key: Keypad /.
  kpDivide,

  /// Key: Keypad *.
  kpMultiply,

  /// Key: Keypad -.
  kpSubtract,

  /// Key: Keypad +.
  kpAdd,

  /// Key: Keypad Enter.
  kpEnter,

  /// Key: Keypad =.
  kpEqual,

  /// Key: Android back button.
  back,

  /// Key: Android menu button.
  menu,

  /// Key: Android volume up button.
  volumeUp,

  /// Key: Android volume down button.
  volumeDown,
}

/// Convert given enum to native value.
int keyboardKeyToNative(KeyboardKey key) {
  switch (key) {
    case KeyboardKey.none:
      return raylib.KeyboardKey.NULL.value;
    case KeyboardKey.apostrophe:
      return raylib.KeyboardKey.APOSTROPHE.value;
    case KeyboardKey.comma:
      return raylib.KeyboardKey.COMMA.value;
    case KeyboardKey.minus:
      return raylib.KeyboardKey.MINUS.value;
    case KeyboardKey.period:
      return raylib.KeyboardKey.PERIOD.value;
    case KeyboardKey.slash:
      return raylib.KeyboardKey.SLASH.value;
    case KeyboardKey.zero:
      return raylib.KeyboardKey.ZERO.value;
    case KeyboardKey.one:
      return raylib.KeyboardKey.ONE.value;
    case KeyboardKey.two:
      return raylib.KeyboardKey.TWO.value;
    case KeyboardKey.three:
      return raylib.KeyboardKey.THREE.value;
    case KeyboardKey.four:
      return raylib.KeyboardKey.FOUR.value;
    case KeyboardKey.five:
      return raylib.KeyboardKey.FIVE.value;
    case KeyboardKey.six:
      return raylib.KeyboardKey.SIX.value;
    case KeyboardKey.seven:
      return raylib.KeyboardKey.SEVEN.value;
    case KeyboardKey.eight:
      return raylib.KeyboardKey.EIGHT.value;
    case KeyboardKey.nine:
      return raylib.KeyboardKey.NINE.value;
    case KeyboardKey.semicolon:
      return raylib.KeyboardKey.SEMICOLON.value;
    case KeyboardKey.equal:
      return raylib.KeyboardKey.EQUAL.value;
    case KeyboardKey.a:
      return raylib.KeyboardKey.A.value;
    case KeyboardKey.b:
      return raylib.KeyboardKey.B.value;
    case KeyboardKey.c:
      return raylib.KeyboardKey.C.value;
    case KeyboardKey.d:
      return raylib.KeyboardKey.D.value;
    case KeyboardKey.e:
      return raylib.KeyboardKey.E.value;
    case KeyboardKey.f:
      return raylib.KeyboardKey.F.value;
    case KeyboardKey.g:
      return raylib.KeyboardKey.G.value;
    case KeyboardKey.h:
      return raylib.KeyboardKey.H.value;
    case KeyboardKey.i:
      return raylib.KeyboardKey.I.value;
    case KeyboardKey.j:
      return raylib.KeyboardKey.J.value;
    case KeyboardKey.k:
      return raylib.KeyboardKey.K.value;
    case KeyboardKey.l:
      return raylib.KeyboardKey.L.value;
    case KeyboardKey.m:
      return raylib.KeyboardKey.M.value;
    case KeyboardKey.n:
      return raylib.KeyboardKey.N.value;
    case KeyboardKey.o:
      return raylib.KeyboardKey.O.value;
    case KeyboardKey.p:
      return raylib.KeyboardKey.P.value;
    case KeyboardKey.q:
      return raylib.KeyboardKey.Q.value;
    case KeyboardKey.r:
      return raylib.KeyboardKey.R.value;
    case KeyboardKey.s:
      return raylib.KeyboardKey.S.value;
    case KeyboardKey.t:
      return raylib.KeyboardKey.T.value;
    case KeyboardKey.u:
      return raylib.KeyboardKey.U.value;
    case KeyboardKey.v:
      return raylib.KeyboardKey.V.value;
    case KeyboardKey.w:
      return raylib.KeyboardKey.W.value;
    case KeyboardKey.x:
      return raylib.KeyboardKey.X.value;
    case KeyboardKey.y:
      return raylib.KeyboardKey.Y.value;
    case KeyboardKey.z:
      return raylib.KeyboardKey.Z.value;
    case KeyboardKey.leftBracket:
      return raylib.KeyboardKey.LEFT_BRACKET.value;
    case KeyboardKey.backSlash:
      return raylib.KeyboardKey.BACKSLASH.value;
    case KeyboardKey.rightBracket:
      return raylib.KeyboardKey.RIGHT_BRACKET.value;
    case KeyboardKey.grave:
      return raylib.KeyboardKey.GRAVE.value;
    case KeyboardKey.space:
      return raylib.KeyboardKey.SPACE.value;
    case KeyboardKey.escape:
      return raylib.KeyboardKey.ESCAPE.value;
    case KeyboardKey.enter:
      return raylib.KeyboardKey.ENTER.value;
    case KeyboardKey.tab:
      return raylib.KeyboardKey.TAB.value;
    case KeyboardKey.backspace:
      return raylib.KeyboardKey.BACKSPACE.value;
    case KeyboardKey.insert:
      return raylib.KeyboardKey.INSERT.value;
    case KeyboardKey.delete:
      return raylib.KeyboardKey.DELETE.value;
    case KeyboardKey.right:
      return raylib.KeyboardKey.RIGHT.value;
    case KeyboardKey.left:
      return raylib.KeyboardKey.LEFT.value;
    case KeyboardKey.down:
      return raylib.KeyboardKey.DOWN.value;
    case KeyboardKey.up:
      return raylib.KeyboardKey.UP.value;
    case KeyboardKey.pageUp:
      return raylib.KeyboardKey.PAGE_UP.value;
    case KeyboardKey.pageDown:
      return raylib.KeyboardKey.PAGE_DOWN.value;
    case KeyboardKey.home:
      return raylib.KeyboardKey.HOME.value;
    case KeyboardKey.end:
      return raylib.KeyboardKey.END.value;
    case KeyboardKey.capsLock:
      return raylib.KeyboardKey.CAPS_LOCK.value;
    case KeyboardKey.scrollLock:
      return raylib.KeyboardKey.SCROLL_LOCK.value;
    case KeyboardKey.numLock:
      return raylib.KeyboardKey.NUM_LOCK.value;
    case KeyboardKey.printScreen:
      return raylib.KeyboardKey.PRINT_SCREEN.value;
    case KeyboardKey.pause:
      return raylib.KeyboardKey.PAUSE.value;
    case KeyboardKey.f1:
      return raylib.KeyboardKey.F1.value;
    case KeyboardKey.f2:
      return raylib.KeyboardKey.F2.value;
    case KeyboardKey.f3:
      return raylib.KeyboardKey.F3.value;
    case KeyboardKey.f4:
      return raylib.KeyboardKey.F4.value;
    case KeyboardKey.f5:
      return raylib.KeyboardKey.F5.value;
    case KeyboardKey.f6:
      return raylib.KeyboardKey.F6.value;
    case KeyboardKey.f7:
      return raylib.KeyboardKey.F7.value;
    case KeyboardKey.f8:
      return raylib.KeyboardKey.F8.value;
    case KeyboardKey.f9:
      return raylib.KeyboardKey.F9.value;
    case KeyboardKey.f10:
      return raylib.KeyboardKey.F10.value;
    case KeyboardKey.f11:
      return raylib.KeyboardKey.F11.value;
    case KeyboardKey.f12:
      return raylib.KeyboardKey.F12.value;
    case KeyboardKey.leftShift:
      return raylib.KeyboardKey.LEFT_SHIFT.value;
    case KeyboardKey.leftControl:
      return raylib.KeyboardKey.LEFT_CONTROL.value;
    case KeyboardKey.leftAlt:
      return raylib.KeyboardKey.LEFT_ALT.value;
    case KeyboardKey.leftSuper:
      return raylib.KeyboardKey.LEFT_SUPER.value;
    case KeyboardKey.rightShift:
      return raylib.KeyboardKey.RIGHT_SHIFT.value;
    case KeyboardKey.rightControl:
      return raylib.KeyboardKey.RIGHT_CONTROL.value;
    case KeyboardKey.rightAlt:
      return raylib.KeyboardKey.RIGHT_ALT.value;
    case KeyboardKey.rightSuper:
      return raylib.KeyboardKey.RIGHT_SUPER.value;
    case KeyboardKey.kbMenu:
      return raylib.KeyboardKey.KB_MENU.value;
    case KeyboardKey.kp0:
      return raylib.KeyboardKey.KP_0.value;
    case KeyboardKey.kp1:
      return raylib.KeyboardKey.KP_1.value;
    case KeyboardKey.kp2:
      return raylib.KeyboardKey.KP_2.value;
    case KeyboardKey.kp3:
      return raylib.KeyboardKey.KP_3.value;
    case KeyboardKey.kp4:
      return raylib.KeyboardKey.KP_4.value;
    case KeyboardKey.kp5:
      return raylib.KeyboardKey.KP_5.value;
    case KeyboardKey.kp6:
      return raylib.KeyboardKey.KP_6.value;
    case KeyboardKey.kp7:
      return raylib.KeyboardKey.KP_7.value;
    case KeyboardKey.kp8:
      return raylib.KeyboardKey.KP_8.value;
    case KeyboardKey.kp9:
      return raylib.KeyboardKey.KP_9.value;
    case KeyboardKey.kpDecimal:
      return raylib.KeyboardKey.KP_DECIMAL.value;
    case KeyboardKey.kpDivide:
      return raylib.KeyboardKey.KP_DIVIDE.value;
    case KeyboardKey.kpMultiply:
      return raylib.KeyboardKey.KP_MULTIPLY.value;
    case KeyboardKey.kpSubtract:
      return raylib.KeyboardKey.KP_SUBTRACT.value;
    case KeyboardKey.kpAdd:
      return raylib.KeyboardKey.KP_ADD.value;
    case KeyboardKey.kpEnter:
      return raylib.KeyboardKey.KP_ENTER.value;
    case KeyboardKey.kpEqual:
      return raylib.KeyboardKey.KP_EQUAL.value;
    case KeyboardKey.back:
      return raylib.KeyboardKey.BACK.value;
    case KeyboardKey.menu:
      return raylib.KeyboardKey.MENU.value;
    case KeyboardKey.volumeUp:
      return raylib.KeyboardKey.VOLUME_UP.value;
    case KeyboardKey.volumeDown:
      return raylib.KeyboardKey.VOLUME_DOWN.value;
  }
}
