part of dart.async;
 typedef dynamic ZoneCallback();
 typedef dynamic ZoneUnaryCallback(arg);
 typedef dynamic ZoneBinaryCallback(arg1, arg2);
 typedef dynamic HandleUncaughtErrorHandler(Zone self, ZoneDelegate parent, Zone zone, error, StackTrace stackTrace);
 typedef dynamic RunHandler(Zone self, ZoneDelegate parent, Zone zone, f());
 typedef dynamic RunUnaryHandler(Zone self, ZoneDelegate parent, Zone zone, f(arg), arg);
 typedef dynamic RunBinaryHandler(Zone self, ZoneDelegate parent, Zone zone, f(arg1, arg2), arg1, arg2);
 typedef ZoneCallback RegisterCallbackHandler(Zone self, ZoneDelegate parent, Zone zone, f());
 typedef ZoneUnaryCallback RegisterUnaryCallbackHandler(Zone self, ZoneDelegate parent, Zone zone, f(arg));
 typedef ZoneBinaryCallback RegisterBinaryCallbackHandler(Zone self, ZoneDelegate parent, Zone zone, f(arg1, arg2));
 typedef AsyncError ErrorCallbackHandler(Zone self, ZoneDelegate parent, Zone zone, Object error, StackTrace stackTrace);
 typedef void ScheduleMicrotaskHandler(Zone self, ZoneDelegate parent, Zone zone, f());
 typedef Timer CreateTimerHandler(Zone self, ZoneDelegate parent, Zone zone, Duration duration, void f());
 typedef Timer CreatePeriodicTimerHandler(Zone self, ZoneDelegate parent, Zone zone, Duration period, void f(Timer timer));
 typedef void PrintHandler(Zone self, ZoneDelegate parent, Zone zone, String line);
 typedef Zone ForkHandler(Zone self, ZoneDelegate parent, Zone zone, ZoneSpecification specification, Map zoneValues);
 class AsyncError implements Error {final error;
 final StackTrace stackTrace;
 AsyncError(this.error, this.stackTrace);
 String toString() => ((__x167) => DEVC$RT.cast(__x167, dynamic, String, "CastGeneral", """line 46, column 24 of dart:async/zone.dart: """, __x167 is String, true))(error.toString());
}
 class _ZoneFunction {final _Zone zone;
 final Function function;
 const _ZoneFunction(this.zone, this.function);
}
 abstract class ZoneSpecification {const factory ZoneSpecification({
dynamic handleUncaughtError(Zone self, ZoneDelegate parent, Zone zone, error, StackTrace stackTrace), dynamic run(Zone self, ZoneDelegate parent, Zone zone, f()), dynamic runUnary(Zone self, ZoneDelegate parent, Zone zone, f(arg), arg), dynamic runBinary(Zone self, ZoneDelegate parent, Zone zone, f(arg1, arg2), arg1, arg2), ZoneCallback registerCallback(Zone self, ZoneDelegate parent, Zone zone, f()), ZoneUnaryCallback registerUnaryCallback(Zone self, ZoneDelegate parent, Zone zone, f(arg)), ZoneBinaryCallback registerBinaryCallback(Zone self, ZoneDelegate parent, Zone zone, f(arg1, arg2)), AsyncError errorCallback(Zone self, ZoneDelegate parent, Zone zone, Object error, StackTrace stackTrace), void scheduleMicrotask(Zone self, ZoneDelegate parent, Zone zone, f()), Timer createTimer(Zone self, ZoneDelegate parent, Zone zone, Duration duration, void f()), Timer createPeriodicTimer(Zone self, ZoneDelegate parent, Zone zone, Duration period, void f(Timer timer)), void print(Zone self, ZoneDelegate parent, Zone zone, String line), Zone fork(Zone self, ZoneDelegate parent, Zone zone, ZoneSpecification specification, Map zoneValues)}
) = _ZoneSpecification;
 factory ZoneSpecification.from(ZoneSpecification other, {
dynamic handleUncaughtError(Zone self, ZoneDelegate parent, Zone zone, error, StackTrace stackTrace) : null, dynamic run(Zone self, ZoneDelegate parent, Zone zone, f()) : null, dynamic runUnary(Zone self, ZoneDelegate parent, Zone zone, f(arg), arg) : null, dynamic runBinary(Zone self, ZoneDelegate parent, Zone zone, f(arg1, arg2), arg1, arg2) : null, ZoneCallback registerCallback(Zone self, ZoneDelegate parent, Zone zone, f()) : null, ZoneUnaryCallback registerUnaryCallback(Zone self, ZoneDelegate parent, Zone zone, f(arg)) : null, ZoneBinaryCallback registerBinaryCallback(Zone self, ZoneDelegate parent, Zone zone, f(arg1, arg2)) : null, AsyncError errorCallback(Zone self, ZoneDelegate parent, Zone zone, Object error, StackTrace stackTrace), void scheduleMicrotask(Zone self, ZoneDelegate parent, Zone zone, f()) : null, Timer createTimer(Zone self, ZoneDelegate parent, Zone zone, Duration duration, void f()) : null, Timer createPeriodicTimer(Zone self, ZoneDelegate parent, Zone zone, Duration period, void f(Timer timer)) : null, void print(Zone self, ZoneDelegate parent, Zone zone, String line) : null, Zone fork(Zone self, ZoneDelegate parent, Zone zone, ZoneSpecification specification, Map zoneValues) : null}
) {
return new ZoneSpecification(handleUncaughtError: ((__x174) => DEVC$RT.cast(__x174, dynamic, __t168, "CastGeneral", """line 138, column 28 of dart:async/zone.dart: """, __x174 is __t168, false))(handleUncaughtError != null ? handleUncaughtError : other.handleUncaughtError), run: ((__x180) => DEVC$RT.cast(__x180, dynamic, __t175, "CastGeneral", """line 141, column 12 of dart:async/zone.dart: """, __x180 is __t175, false))(run != null ? run : other.run), runUnary: ((__x188) => DEVC$RT.cast(__x188, dynamic, __t181, "CastGeneral", """line 142, column 17 of dart:async/zone.dart: """, __x188 is __t181, false))(runUnary != null ? runUnary : other.runUnary), runBinary: ((__x198) => DEVC$RT.cast(__x198, dynamic, __t189, "CastGeneral", """line 143, column 18 of dart:async/zone.dart: """, __x198 is __t189, false))(runBinary != null ? runBinary : other.runBinary), registerCallback: ((__x205) => DEVC$RT.cast(__x205, dynamic, __t199, "CastGeneral", """line 144, column 25 of dart:async/zone.dart: """, __x205 is __t199, false))(registerCallback != null ? registerCallback : other.registerCallback), registerUnaryCallback: ((__x214) => DEVC$RT.cast(__x214, dynamic, __t206, "CastGeneral", """line 147, column 30 of dart:async/zone.dart: """, __x214 is __t206, false))(registerUnaryCallback != null ? registerUnaryCallback : other.registerUnaryCallback), registerBinaryCallback: ((__x225) => DEVC$RT.cast(__x225, dynamic, __t215, "CastGeneral", """line 150, column 31 of dart:async/zone.dart: """, __x225 is __t215, false))(registerBinaryCallback != null ? registerBinaryCallback : other.registerBinaryCallback), errorCallback: ((__x232) => DEVC$RT.cast(__x232, dynamic, __t226, "CastGeneral", """line 153, column 22 of dart:async/zone.dart: """, __x232 is __t226, false))(errorCallback != null ? errorCallback : other.errorCallback), scheduleMicrotask: ((__x238) => DEVC$RT.cast(__x238, dynamic, __t233, "CastGeneral", """line 156, column 26 of dart:async/zone.dart: """, __x238 is __t233, false))(scheduleMicrotask != null ? scheduleMicrotask : other.scheduleMicrotask), createTimer: ((__x245) => DEVC$RT.cast(__x245, dynamic, __t239, "CastGeneral", """line 159, column 21 of dart:async/zone.dart: """, __x245 is __t239, false))(createTimer != null ? createTimer : other.createTimer), createPeriodicTimer: ((__x253) => DEVC$RT.cast(__x253, dynamic, __t246, "CastGeneral", """line 160, column 28 of dart:async/zone.dart: """, __x253 is __t246, false))(createPeriodicTimer != null ? createPeriodicTimer : other.createPeriodicTimer), print: ((__x259) => DEVC$RT.cast(__x259, dynamic, __t254, "CastGeneral", """line 163, column 15 of dart:async/zone.dart: """, __x259 is __t254, false))(print != null ? print : other.print), fork: ((__x266) => DEVC$RT.cast(__x266, dynamic, __t260, "CastGeneral", """line 164, column 13 of dart:async/zone.dart: """, __x266 is __t260, false))(fork != null ? fork : other.fork));
}
 HandleUncaughtErrorHandler get handleUncaughtError;
 RunHandler get run;
 RunUnaryHandler get runUnary;
 RunBinaryHandler get runBinary;
 RegisterCallbackHandler get registerCallback;
 RegisterUnaryCallbackHandler get registerUnaryCallback;
 RegisterBinaryCallbackHandler get registerBinaryCallback;
 ErrorCallbackHandler get errorCallback;
 ScheduleMicrotaskHandler get scheduleMicrotask;
 CreateTimerHandler get createTimer;
 CreatePeriodicTimerHandler get createPeriodicTimer;
 PrintHandler get print;
 ForkHandler get fork;
}
 class _ZoneSpecification implements ZoneSpecification {const _ZoneSpecification({
this.handleUncaughtError : null, this.run : null, this.runUnary : null, this.runBinary : null, this.registerCallback : null, this.registerUnaryCallback : null, this.registerBinaryCallback : null, this.errorCallback : null, this.scheduleMicrotask : null, this.createTimer : null, this.createPeriodicTimer : null, this.print : null, this.fork : null}
);
 final handleUncaughtError;
 final run;
 final runUnary;
 final runBinary;
 final registerCallback;
 final registerUnaryCallback;
 final registerBinaryCallback;
 final errorCallback;
 final scheduleMicrotask;
 final createTimer;
 final createPeriodicTimer;
 final print;
 final fork;
}
 abstract class ZoneDelegate {dynamic handleUncaughtError(Zone zone, error, StackTrace stackTrace);
 dynamic run(Zone zone, f());
 dynamic runUnary(Zone zone, f(arg), arg);
 dynamic runBinary(Zone zone, f(arg1, arg2), arg1, arg2);
 ZoneCallback registerCallback(Zone zone, f());
 ZoneUnaryCallback registerUnaryCallback(Zone zone, f(arg));
 ZoneBinaryCallback registerBinaryCallback(Zone zone, f(arg1, arg2));
 AsyncError errorCallback(Zone zone, Object error, StackTrace stackTrace);
 void scheduleMicrotask(Zone zone, f());
 Timer createTimer(Zone zone, Duration duration, void f());
 Timer createPeriodicTimer(Zone zone, Duration period, void f(Timer timer));
 void print(Zone zone, String line);
 Zone fork(Zone zone, ZoneSpecification specification, Map zoneValues);
}
 abstract class Zone {Zone._();
 static const Zone ROOT = _ROOT_ZONE;
 static Zone _current = DEVC$RT.cast(_ROOT_ZONE, dynamic, Zone, "CastGeneral", """line 262, column 26 of dart:async/zone.dart: """, _ROOT_ZONE is Zone, true);
 static Zone get current => _current;
 dynamic handleUncaughtError(error, StackTrace stackTrace);
 Zone get parent;
 Zone get errorZone;
 bool inSameErrorZone(Zone otherZone);
 Zone fork({
ZoneSpecification specification, Map zoneValues}
);
 dynamic run(f());
 dynamic runUnary(f(arg), var arg);
 dynamic runBinary(f(arg1, arg2), var arg1, var arg2);
 dynamic runGuarded(f());
 dynamic runUnaryGuarded(f(arg), var arg);
 dynamic runBinaryGuarded(f(arg1, arg2), var arg1, var arg2);
 ZoneCallback registerCallback(callback());
 ZoneUnaryCallback registerUnaryCallback(callback(arg));
 ZoneBinaryCallback registerBinaryCallback(callback(arg1, arg2));
 ZoneCallback bindCallback(f(), {
bool runGuarded : true}
);
 ZoneUnaryCallback bindUnaryCallback(f(arg), {
bool runGuarded : true}
);
 ZoneBinaryCallback bindBinaryCallback(f(arg1, arg2), {
bool runGuarded : true}
);
 AsyncError errorCallback(Object error, StackTrace stackTrace);
 void scheduleMicrotask(void f());
 Timer createTimer(Duration duration, void callback());
 Timer createPeriodicTimer(Duration period, void callback(Timer timer));
 void print(String line);
 static Zone _enter(Zone zone) {
assert (zone != null); assert (!identical(zone, _current)); Zone previous = _current;
 _current = zone;
 return previous;
}
 static void _leave(Zone previous) {
assert (previous != null); Zone._current = previous;
}
 operator [](Object key);
}
 ZoneDelegate _parentDelegate(_Zone zone) {
if (zone.parent == null) return null;
 return zone.parent._delegate;
}
 class _ZoneDelegate implements ZoneDelegate {final _Zone _delegationTarget;
 _ZoneDelegate(this._delegationTarget);
 dynamic handleUncaughtError(Zone zone, error, StackTrace stackTrace) {
_ZoneFunction implementation = _delegationTarget._handleUncaughtError;
 _Zone implZone = implementation.zone;
 return (implementation.function)(implZone, _parentDelegate(implZone), zone, error, stackTrace);
}
 dynamic run(Zone zone, f()) {
_ZoneFunction implementation = _delegationTarget._run;
 _Zone implZone = implementation.zone;
 return (implementation.function)(implZone, _parentDelegate(implZone), zone, f);
}
 dynamic runUnary(Zone zone, f(arg), arg) {
_ZoneFunction implementation = _delegationTarget._runUnary;
 _Zone implZone = implementation.zone;
 return (implementation.function)(implZone, _parentDelegate(implZone), zone, f, arg);
}
 dynamic runBinary(Zone zone, f(arg1, arg2), arg1, arg2) {
_ZoneFunction implementation = _delegationTarget._runBinary;
 _Zone implZone = implementation.zone;
 return (implementation.function)(implZone, _parentDelegate(implZone), zone, f, arg1, arg2);
}
 ZoneCallback registerCallback(Zone zone, f()) {
_ZoneFunction implementation = _delegationTarget._registerCallback;
 _Zone implZone = implementation.zone;
 return ((__x267) => DEVC$RT.cast(__x267, dynamic, __t204, "CastGeneral", """line 522, column 12 of dart:async/zone.dart: """, __x267 is __t204, false))((implementation.function)(implZone, _parentDelegate(implZone), zone, f));
}
 ZoneUnaryCallback registerUnaryCallback(Zone zone, f(arg)) {
_ZoneFunction implementation = _delegationTarget._registerUnaryCallback;
 _Zone implZone = implementation.zone;
 return ((__x268) => DEVC$RT.cast(__x268, dynamic, __t212, "CastGeneral", """line 529, column 12 of dart:async/zone.dart: """, __x268 is __t212, false))((implementation.function)(implZone, _parentDelegate(implZone), zone, f));
}
 ZoneBinaryCallback registerBinaryCallback(Zone zone, f(arg1, arg2)) {
_ZoneFunction implementation = _delegationTarget._registerBinaryCallback;
 _Zone implZone = implementation.zone;
 return ((__x269) => DEVC$RT.cast(__x269, dynamic, __t222, "CastGeneral", """line 536, column 12 of dart:async/zone.dart: """, __x269 is __t222, false))((implementation.function)(implZone, _parentDelegate(implZone), zone, f));
}
 AsyncError errorCallback(Zone zone, Object error, StackTrace stackTrace) {
_ZoneFunction implementation = _delegationTarget._errorCallback;
 _Zone implZone = implementation.zone;
 if (identical(implZone, _ROOT_ZONE)) return null;
 return ((__x270) => DEVC$RT.cast(__x270, dynamic, AsyncError, "CastGeneral", """line 544, column 12 of dart:async/zone.dart: """, __x270 is AsyncError, true))((implementation.function)(implZone, _parentDelegate(implZone), zone, error, stackTrace));
}
 void scheduleMicrotask(Zone zone, f()) {
_ZoneFunction implementation = _delegationTarget._scheduleMicrotask;
 _Zone implZone = implementation.zone;
 (implementation.function)(implZone, _parentDelegate(implZone), zone, f);
}
 Timer createTimer(Zone zone, Duration duration, void f()) {
_ZoneFunction implementation = _delegationTarget._createTimer;
 _Zone implZone = implementation.zone;
 return ((__x271) => DEVC$RT.cast(__x271, dynamic, Timer, "CastGeneral", """line 558, column 12 of dart:async/zone.dart: """, __x271 is Timer, true))((implementation.function)(implZone, _parentDelegate(implZone), zone, duration, f));
}
 Timer createPeriodicTimer(Zone zone, Duration period, void f(Timer timer)) {
_ZoneFunction implementation = _delegationTarget._createPeriodicTimer;
 _Zone implZone = implementation.zone;
 return ((__x272) => DEVC$RT.cast(__x272, dynamic, Timer, "CastGeneral", """line 565, column 12 of dart:async/zone.dart: """, __x272 is Timer, true))((implementation.function)(implZone, _parentDelegate(implZone), zone, period, f));
}
 void print(Zone zone, String line) {
_ZoneFunction implementation = _delegationTarget._print;
 _Zone implZone = implementation.zone;
 (implementation.function)(implZone, _parentDelegate(implZone), zone, line);
}
 Zone fork(Zone zone, ZoneSpecification specification, Map zoneValues) {
_ZoneFunction implementation = _delegationTarget._fork;
 _Zone implZone = implementation.zone;
 return ((__x273) => DEVC$RT.cast(__x273, dynamic, Zone, "CastGeneral", """line 580, column 12 of dart:async/zone.dart: """, __x273 is Zone, true))((implementation.function)(implZone, _parentDelegate(implZone), zone, specification, zoneValues));
}
}
 abstract class _Zone implements Zone {const _Zone();
 _ZoneFunction get _runUnary;
 _ZoneFunction get _run;
 _ZoneFunction get _runBinary;
 _ZoneFunction get _registerCallback;
 _ZoneFunction get _registerUnaryCallback;
 _ZoneFunction get _registerBinaryCallback;
 _ZoneFunction get _errorCallback;
 _ZoneFunction get _scheduleMicrotask;
 _ZoneFunction get _createTimer;
 _ZoneFunction get _createPeriodicTimer;
 _ZoneFunction get _print;
 _ZoneFunction get _fork;
 _ZoneFunction get _handleUncaughtError;
 _Zone get parent;
 _ZoneDelegate get _delegate;
 Map get _map;
 bool inSameErrorZone(Zone otherZone) {
return identical(this, otherZone) || identical(errorZone, otherZone.errorZone);
}
}
 class _CustomZone extends _Zone {_ZoneFunction _runUnary;
 _ZoneFunction _run;
 _ZoneFunction _runBinary;
 _ZoneFunction _registerCallback;
 _ZoneFunction _registerUnaryCallback;
 _ZoneFunction _registerBinaryCallback;
 _ZoneFunction _errorCallback;
 _ZoneFunction _scheduleMicrotask;
 _ZoneFunction _createTimer;
 _ZoneFunction _createPeriodicTimer;
 _ZoneFunction _print;
 _ZoneFunction _fork;
 _ZoneFunction _handleUncaughtError;
 ZoneDelegate _delegateCache;
 final _Zone parent;
 final Map _map;
 ZoneDelegate get _delegate {
if (_delegateCache != null) return _delegateCache;
 _delegateCache = new _ZoneDelegate(this);
 return _delegateCache;
}
 _CustomZone(this.parent, ZoneSpecification specification, this._map) {
_run = (specification.run != null) ? new _ZoneFunction(this, specification.run) : parent._run;
 _runUnary = (specification.runUnary != null) ? new _ZoneFunction(this, specification.runUnary) : parent._runUnary;
 _runBinary = (specification.runBinary != null) ? new _ZoneFunction(this, specification.runBinary) : parent._runBinary;
 _registerCallback = (specification.registerCallback != null) ? new _ZoneFunction(this, specification.registerCallback) : parent._registerCallback;
 _registerUnaryCallback = (specification.registerUnaryCallback != null) ? new _ZoneFunction(this, specification.registerUnaryCallback) : parent._registerUnaryCallback;
 _registerBinaryCallback = (specification.registerBinaryCallback != null) ? new _ZoneFunction(this, specification.registerBinaryCallback) : parent._registerBinaryCallback;
 _errorCallback = (specification.errorCallback != null) ? new _ZoneFunction(this, specification.errorCallback) : parent._errorCallback;
 _scheduleMicrotask = (specification.scheduleMicrotask != null) ? new _ZoneFunction(this, specification.scheduleMicrotask) : parent._scheduleMicrotask;
 _createTimer = (specification.createTimer != null) ? new _ZoneFunction(this, specification.createTimer) : parent._createTimer;
 _createPeriodicTimer = (specification.createPeriodicTimer != null) ? new _ZoneFunction(this, specification.createPeriodicTimer) : parent._createPeriodicTimer;
 _print = (specification.print != null) ? new _ZoneFunction(this, specification.print) : parent._print;
 _fork = (specification.fork != null) ? new _ZoneFunction(this, specification.fork) : parent._fork;
 _handleUncaughtError = (specification.handleUncaughtError != null) ? new _ZoneFunction(this, specification.handleUncaughtError) : parent._handleUncaughtError;
}
 Zone get errorZone => _handleUncaughtError.zone;
 dynamic runGuarded(f()) {
try {
return run(f);
}
 catch (e, s) {
return handleUncaughtError(e, s);
}
}
 dynamic runUnaryGuarded(f(arg), arg) {
try {
return runUnary(f, arg);
}
 catch (e, s) {
return handleUncaughtError(e, s);
}
}
 dynamic runBinaryGuarded(f(arg1, arg2), arg1, arg2) {
try {
return runBinary(f, arg1, arg2);
}
 catch (e, s) {
return handleUncaughtError(e, s);
}
}
 ZoneCallback bindCallback(f(), {
bool runGuarded : true}
) {
ZoneCallback registered = registerCallback(f);
 if (runGuarded) {
return () => this.runGuarded(registered);
}
 else {
return () => this.run(registered);
}
}
 ZoneUnaryCallback bindUnaryCallback(f(arg), {
bool runGuarded : true}
) {
ZoneUnaryCallback registered = registerUnaryCallback(f);
 if (runGuarded) {
return (arg) => this.runUnaryGuarded(registered, arg);
}
 else {
return (arg) => this.runUnary(registered, arg);
}
}
 ZoneBinaryCallback bindBinaryCallback(f(arg1, arg2), {
bool runGuarded : true}
) {
ZoneBinaryCallback registered = registerBinaryCallback(f);
 if (runGuarded) {
return (arg1, arg2) => this.runBinaryGuarded(registered, arg1, arg2);
}
 else {
return (arg1, arg2) => this.runBinary(registered, arg1, arg2);
}
}
 operator [](Object key) {
var result = _map[key];
 if (result != null || _map.containsKey(key)) return result;
 if (parent != null) {
var value = parent[key];
 if (value != null) {
_map[key] = value;
}
 return value;
}
 assert (this == _ROOT_ZONE); return null;
}
 dynamic handleUncaughtError(error, StackTrace stackTrace) {
_ZoneFunction implementation = this._handleUncaughtError;
 assert (implementation != null); ZoneDelegate parentDelegate = _parentDelegate(implementation.zone);
 return (implementation.function)(implementation.zone, parentDelegate, this, error, stackTrace);
}
 Zone fork({
ZoneSpecification specification, Map zoneValues}
) {
_ZoneFunction implementation = this._fork;
 assert (implementation != null); ZoneDelegate parentDelegate = _parentDelegate(implementation.zone);
 return ((__x274) => DEVC$RT.cast(__x274, dynamic, Zone, "CastGeneral", """line 787, column 12 of dart:async/zone.dart: """, __x274 is Zone, true))((implementation.function)(implementation.zone, parentDelegate, this, specification, zoneValues));
}
 dynamic run(f()) {
_ZoneFunction implementation = this._run;
 assert (implementation != null); ZoneDelegate parentDelegate = _parentDelegate(implementation.zone);
 return (implementation.function)(implementation.zone, parentDelegate, this, f);
}
 dynamic runUnary(f(arg), arg) {
_ZoneFunction implementation = this._runUnary;
 assert (implementation != null); ZoneDelegate parentDelegate = _parentDelegate(implementation.zone);
 return (implementation.function)(implementation.zone, parentDelegate, this, f, arg);
}
 dynamic runBinary(f(arg1, arg2), arg1, arg2) {
_ZoneFunction implementation = this._runBinary;
 assert (implementation != null); ZoneDelegate parentDelegate = _parentDelegate(implementation.zone);
 return (implementation.function)(implementation.zone, parentDelegate, this, f, arg1, arg2);
}
 ZoneCallback registerCallback(f()) {
_ZoneFunction implementation = this._registerCallback;
 assert (implementation != null); ZoneDelegate parentDelegate = _parentDelegate(implementation.zone);
 return ((__x275) => DEVC$RT.cast(__x275, dynamic, __t204, "CastGeneral", """line 820, column 12 of dart:async/zone.dart: """, __x275 is __t204, false))((implementation.function)(implementation.zone, parentDelegate, this, f));
}
 ZoneUnaryCallback registerUnaryCallback(f(arg)) {
_ZoneFunction implementation = this._registerUnaryCallback;
 assert (implementation != null); ZoneDelegate parentDelegate = _parentDelegate(implementation.zone);
 return ((__x276) => DEVC$RT.cast(__x276, dynamic, __t212, "CastGeneral", """line 828, column 12 of dart:async/zone.dart: """, __x276 is __t212, false))((implementation.function)(implementation.zone, parentDelegate, this, f));
}
 ZoneBinaryCallback registerBinaryCallback(f(arg1, arg2)) {
_ZoneFunction implementation = this._registerBinaryCallback;
 assert (implementation != null); ZoneDelegate parentDelegate = _parentDelegate(implementation.zone);
 return ((__x277) => DEVC$RT.cast(__x277, dynamic, __t222, "CastGeneral", """line 836, column 12 of dart:async/zone.dart: """, __x277 is __t222, false))((implementation.function)(implementation.zone, parentDelegate, this, f));
}
 AsyncError errorCallback(Object error, StackTrace stackTrace) {
final _ZoneFunction implementation = this._errorCallback;
 assert (implementation != null); final Zone implementationZone = implementation.zone;
 if (identical(implementationZone, _ROOT_ZONE)) return null;
 final ZoneDelegate parentDelegate = _parentDelegate(DEVC$RT.cast(implementationZone, Zone, _Zone, "CastGeneral", """line 845, column 57 of dart:async/zone.dart: """, implementationZone is _Zone, true));
 return ((__x278) => DEVC$RT.cast(__x278, dynamic, AsyncError, "CastGeneral", """line 846, column 12 of dart:async/zone.dart: """, __x278 is AsyncError, true))((implementation.function)(implementationZone, parentDelegate, this, error, stackTrace));
}
 void scheduleMicrotask(void f()) {
_ZoneFunction implementation = this._scheduleMicrotask;
 assert (implementation != null); ZoneDelegate parentDelegate = _parentDelegate(implementation.zone);
 return (implementation.function)(implementation.zone, parentDelegate, this, f);
}
 Timer createTimer(Duration duration, void f()) {
_ZoneFunction implementation = this._createTimer;
 assert (implementation != null); ZoneDelegate parentDelegate = _parentDelegate(implementation.zone);
 return ((__x279) => DEVC$RT.cast(__x279, dynamic, Timer, "CastGeneral", """line 862, column 12 of dart:async/zone.dart: """, __x279 is Timer, true))((implementation.function)(implementation.zone, parentDelegate, this, duration, f));
}
 Timer createPeriodicTimer(Duration duration, void f(Timer timer)) {
_ZoneFunction implementation = this._createPeriodicTimer;
 assert (implementation != null); ZoneDelegate parentDelegate = _parentDelegate(implementation.zone);
 return ((__x280) => DEVC$RT.cast(__x280, dynamic, Timer, "CastGeneral", """line 870, column 12 of dart:async/zone.dart: """, __x280 is Timer, true))((implementation.function)(implementation.zone, parentDelegate, this, duration, f));
}
 void print(String line) {
_ZoneFunction implementation = this._print;
 assert (implementation != null); ZoneDelegate parentDelegate = _parentDelegate(implementation.zone);
 return (implementation.function)(implementation.zone, parentDelegate, this, line);
}
}
 void _rootHandleUncaughtError(Zone self, ZoneDelegate parent, Zone zone, error, StackTrace stackTrace) {
_schedulePriorityAsyncCallback(() {
throw new _UncaughtAsyncError(error, stackTrace);
}
);
}
 dynamic _rootRun(Zone self, ZoneDelegate parent, Zone zone, f()) {
if (Zone._current == zone) return f();
 Zone old = Zone._enter(zone);
 try {
return f();
}
 finally {
Zone._leave(old);
}
}
 dynamic _rootRunUnary(Zone self, ZoneDelegate parent, Zone zone, f(arg), arg) {
if (Zone._current == zone) return f(arg);
 Zone old = Zone._enter(zone);
 try {
return f(arg);
}
 finally {
Zone._leave(old);
}
}
 dynamic _rootRunBinary(Zone self, ZoneDelegate parent, Zone zone, f(arg1, arg2), arg1, arg2) {
if (Zone._current == zone) return f(arg1, arg2);
 Zone old = Zone._enter(zone);
 try {
return f(arg1, arg2);
}
 finally {
Zone._leave(old);
}
}
 ZoneCallback _rootRegisterCallback(Zone self, ZoneDelegate parent, Zone zone, f()) {
return f;
}
 ZoneUnaryCallback _rootRegisterUnaryCallback(Zone self, ZoneDelegate parent, Zone zone, f(arg)) {
return f;
}
 ZoneBinaryCallback _rootRegisterBinaryCallback(Zone self, ZoneDelegate parent, Zone zone, f(arg1, arg2)) {
return f;
}
 AsyncError _rootErrorCallback(Zone self, ZoneDelegate parent, Zone zone, Object error, StackTrace stackTrace) => null;
 void _rootScheduleMicrotask(Zone self, ZoneDelegate parent, Zone zone, f()) {
if (!identical(_ROOT_ZONE, zone)) {
bool hasErrorHandler = !_ROOT_ZONE.inSameErrorZone(zone);
 f = zone.bindCallback(f, runGuarded: hasErrorHandler);
}
 _scheduleAsyncCallback(f);
}
 Timer _rootCreateTimer(Zone self, ZoneDelegate parent, Zone zone, Duration duration, void callback()) {
if (!identical(_ROOT_ZONE, zone)) {
callback = zone.bindCallback(callback);
}
 return Timer._createTimer(duration, callback);
}
 Timer _rootCreatePeriodicTimer(Zone self, ZoneDelegate parent, Zone zone, Duration duration, void callback(Timer timer)) {
if (!identical(_ROOT_ZONE, zone)) {
callback = zone.bindUnaryCallback(DEVC$RT.wrap((void f(Timer __u281)) {
void c(Timer x0) => f(DEVC$RT.cast(x0, dynamic, Timer, "CastParam", """line 962, column 39 of dart:async/zone.dart: """, x0 is Timer, true));
 return f == null ? null : c;
}
, callback, __t282, __t212, "Wrap", """line 962, column 39 of dart:async/zone.dart: """, callback is __t212));
}
 return Timer._createPeriodicTimer(duration, callback);
}
 void _rootPrint(Zone self, ZoneDelegate parent, Zone zone, String line) {
printToConsole(line);
}
 void _printToZone(String line) {
Zone.current.print(line);
}
 Zone _rootFork(Zone self, ZoneDelegate parent, Zone zone, ZoneSpecification specification, Map zoneValues) {
printToZone = _printToZone;
 if (specification == null) {
specification = const ZoneSpecification();
}
 else if (specification is! _ZoneSpecification) {
throw new ArgumentError("ZoneSpecifications must be instantiated" " with the provided constructor.");
}
 Map valueMap;
 if (zoneValues == null) {
if (zone is _Zone) {
valueMap = zone._map;
}
 else {
valueMap = new HashMap();
}
}
 else {
valueMap = new HashMap.from(zoneValues);
}
 return new _CustomZone(DEVC$RT.cast(zone, Zone, _Zone, "CastGeneral", """line 999, column 26 of dart:async/zone.dart: """, zone is _Zone, true), specification, valueMap);
}
 class _RootZoneSpecification implements ZoneSpecification {HandleUncaughtErrorHandler get handleUncaughtError => _rootHandleUncaughtError;
 RunHandler get run => _rootRun;
 RunUnaryHandler get runUnary => _rootRunUnary;
 RunBinaryHandler get runBinary => _rootRunBinary;
 RegisterCallbackHandler get registerCallback => _rootRegisterCallback;
 RegisterUnaryCallbackHandler get registerUnaryCallback => _rootRegisterUnaryCallback;
 RegisterBinaryCallbackHandler get registerBinaryCallback => _rootRegisterBinaryCallback;
 ErrorCallbackHandler get errorCallback => _rootErrorCallback;
 ScheduleMicrotaskHandler get scheduleMicrotask => _rootScheduleMicrotask;
 CreateTimerHandler get createTimer => _rootCreateTimer;
 CreatePeriodicTimerHandler get createPeriodicTimer => _rootCreatePeriodicTimer;
 PrintHandler get print => _rootPrint;
 ForkHandler get fork => _rootFork;
}
 class _RootZone extends _Zone {const _RootZone();
 _ZoneFunction get _run => const _ZoneFunction(_ROOT_ZONE, _rootRun);
 _ZoneFunction get _runUnary => const _ZoneFunction(_ROOT_ZONE, _rootRunUnary);
 _ZoneFunction get _runBinary => const _ZoneFunction(_ROOT_ZONE, _rootRunBinary);
 _ZoneFunction get _registerCallback => const _ZoneFunction(_ROOT_ZONE, _rootRegisterCallback);
 _ZoneFunction get _registerUnaryCallback => const _ZoneFunction(_ROOT_ZONE, _rootRegisterUnaryCallback);
 _ZoneFunction get _registerBinaryCallback => const _ZoneFunction(_ROOT_ZONE, _rootRegisterBinaryCallback);
 _ZoneFunction get _errorCallback => const _ZoneFunction(_ROOT_ZONE, _rootErrorCallback);
 _ZoneFunction get _scheduleMicrotask => const _ZoneFunction(_ROOT_ZONE, _rootScheduleMicrotask);
 _ZoneFunction get _createTimer => const _ZoneFunction(_ROOT_ZONE, _rootCreateTimer);
 _ZoneFunction get _createPeriodicTimer => const _ZoneFunction(_ROOT_ZONE, _rootCreatePeriodicTimer);
 _ZoneFunction get _print => const _ZoneFunction(_ROOT_ZONE, _rootPrint);
 _ZoneFunction get _fork => const _ZoneFunction(_ROOT_ZONE, _rootFork);
 _ZoneFunction get _handleUncaughtError => const _ZoneFunction(_ROOT_ZONE, _rootHandleUncaughtError);
 _Zone get parent => null;
 Map get _map => _rootMap;
 static Map _rootMap = new HashMap();
 static ZoneDelegate _rootDelegate;
 ZoneDelegate get _delegate {
if (_rootDelegate != null) return _rootDelegate;
 return _rootDelegate = new _ZoneDelegate(this);
}
 Zone get errorZone => this;
 dynamic runGuarded(f()) {
try {
if (identical(_ROOT_ZONE, Zone._current)) {
return f();
}
 return _rootRun(null, null, this, f);
}
 catch (e, s) {
return handleUncaughtError(e, s);
}
}
 dynamic runUnaryGuarded(f(arg), arg) {
try {
if (identical(_ROOT_ZONE, Zone._current)) {
return f(arg);
}
 return _rootRunUnary(null, null, this, f, arg);
}
 catch (e, s) {
return handleUncaughtError(e, s);
}
}
 dynamic runBinaryGuarded(f(arg1, arg2), arg1, arg2) {
try {
if (identical(_ROOT_ZONE, Zone._current)) {
return f(arg1, arg2);
}
 return _rootRunBinary(null, null, this, f, arg1, arg2);
}
 catch (e, s) {
return handleUncaughtError(e, s);
}
}
 ZoneCallback bindCallback(f(), {
bool runGuarded : true}
) {
if (runGuarded) {
return () => this.runGuarded(f);
}
 else {
return () => this.run(f);
}
}
 ZoneUnaryCallback bindUnaryCallback(f(arg), {
bool runGuarded : true}
) {
if (runGuarded) {
return (arg) => this.runUnaryGuarded(f, arg);
}
 else {
return (arg) => this.runUnary(f, arg);
}
}
 ZoneBinaryCallback bindBinaryCallback(f(arg1, arg2), {
bool runGuarded : true}
) {
if (runGuarded) {
return (arg1, arg2) => this.runBinaryGuarded(f, arg1, arg2);
}
 else {
return (arg1, arg2) => this.runBinary(f, arg1, arg2);
}
}
 operator [](Object key) => null;
 dynamic handleUncaughtError(error, StackTrace stackTrace) {
return _rootHandleUncaughtError(null, null, this, error, stackTrace);
}
 Zone fork({
ZoneSpecification specification, Map zoneValues}
) {
return _rootFork(null, null, this, specification, zoneValues);
}
 dynamic run(f()) {
if (identical(Zone._current, _ROOT_ZONE)) return f();
 return _rootRun(null, null, this, f);
}
 dynamic runUnary(f(arg), arg) {
if (identical(Zone._current, _ROOT_ZONE)) return f(arg);
 return _rootRunUnary(null, null, this, f, arg);
}
 dynamic runBinary(f(arg1, arg2), arg1, arg2) {
if (identical(Zone._current, _ROOT_ZONE)) return f(arg1, arg2);
 return _rootRunBinary(null, null, this, f, arg1, arg2);
}
 ZoneCallback registerCallback(f()) => f;
 ZoneUnaryCallback registerUnaryCallback(f(arg)) => f;
 ZoneBinaryCallback registerBinaryCallback(f(arg1, arg2)) => f;
 AsyncError errorCallback(Object error, StackTrace stackTrace) => null;
 void scheduleMicrotask(void f()) {
_rootScheduleMicrotask(null, null, this, f);
}
 Timer createTimer(Duration duration, void f()) {
return Timer._createTimer(duration, f);
}
 Timer createPeriodicTimer(Duration duration, void f(Timer timer)) {
return Timer._createPeriodicTimer(duration, f);
}
 void print(String line) {
printToConsole(line);
}
}
 const _ROOT_ZONE = const _RootZone();
 dynamic runZoned(body(), {
Map zoneValues, ZoneSpecification zoneSpecification, Function onError}
) {
HandleUncaughtErrorHandler errorHandler;
 if (onError != null) {
errorHandler = (Zone self, ZoneDelegate parent, Zone zone, error, StackTrace stackTrace) {
try {
if (onError is ZoneBinaryCallback) {
return self.parent.runBinary(onError, error, stackTrace);
}
 return self.parent.runUnary(DEVC$RT.cast(onError, Function, __t212, "CastGeneral", """line 1228, column 37 of dart:async/zone.dart: """, onError is __t212, false), error);
}
 catch (e, s) {
if (identical(e, error)) {
return parent.handleUncaughtError(zone, error, stackTrace);
}
 else {
return parent.handleUncaughtError(zone, e, s);
}
}
}
;
}
 if (zoneSpecification == null) {
zoneSpecification = new ZoneSpecification(handleUncaughtError: errorHandler);
}
 else if (errorHandler != null) {
zoneSpecification = new ZoneSpecification.from(zoneSpecification, handleUncaughtError: errorHandler);
}
 Zone zone = Zone.current.fork(specification: zoneSpecification, zoneValues: zoneValues);
 if (onError != null) {
return zone.runGuarded(body);
}
 else {
return zone.run(body);
}
}
 typedef dynamic __t168(Zone __u169, ZoneDelegate __u170, Zone __u171, dynamic __u172, StackTrace __u173);
 typedef dynamic __t175(Zone __u176, ZoneDelegate __u177, Zone __u178, dynamic __u179());
 typedef dynamic __t181(Zone __u182, ZoneDelegate __u183, Zone __u184, dynamic __u185(dynamic __u186), dynamic __u187);
 typedef dynamic __t189(Zone __u190, ZoneDelegate __u191, Zone __u192, dynamic __u193(dynamic __u194, dynamic __u195), dynamic __u196, dynamic __u197);
 typedef dynamic __t204();
 typedef __t204 __t199(Zone __u200, ZoneDelegate __u201, Zone __u202, dynamic __u203());
 typedef dynamic __t212(dynamic __u213);
 typedef __t212 __t206(Zone __u207, ZoneDelegate __u208, Zone __u209, dynamic __u210(dynamic __u211));
 typedef dynamic __t222(dynamic __u223, dynamic __u224);
 typedef __t222 __t215(Zone __u216, ZoneDelegate __u217, Zone __u218, dynamic __u219(dynamic __u220, dynamic __u221));
 typedef AsyncError __t226(Zone __u227, ZoneDelegate __u228, Zone __u229, Object __u230, StackTrace __u231);
 typedef void __t233(Zone __u234, ZoneDelegate __u235, Zone __u236, dynamic __u237());
 typedef Timer __t239(Zone __u240, ZoneDelegate __u241, Zone __u242, Duration __u243, void __u244());
 typedef Timer __t246(Zone __u247, ZoneDelegate __u248, Zone __u249, Duration __u250, void __u251(Timer __u252));
 typedef void __t254(Zone __u255, ZoneDelegate __u256, Zone __u257, String __u258);
 typedef Zone __t260(Zone __u261, ZoneDelegate __u262, Zone __u263, ZoneSpecification __u264, Map<dynamic, dynamic> __u265);
 typedef void __t282(Timer __u283);
