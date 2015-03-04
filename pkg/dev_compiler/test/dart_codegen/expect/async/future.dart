part of dart.async;
 abstract class Future<T> {static final _Future _nullFuture = ((__x10) => DEVC$RT.cast(__x10, DEVC$RT.type((Future<dynamic> _) {
  }
), DEVC$RT.type((_Future<dynamic> _) {
  }
), "CastExact", """line 98, column 38 of dart:async/future.dart: """, __x10 is _Future<dynamic>, true))(new Future.value(null));
 factory Future(computation()) {
  _Future result = new _Future<T>();
   Timer.run(() {
    try {
      result._complete(computation());
      }
     catch (e, s) {
      _completeWithErrorCallback(result, e, s);
      }
    }
  );
   return DEVC$RT.cast(result, DEVC$RT.type((_Future<dynamic> _) {
    }
  ), DEVC$RT.type((Future<T> _) {
    }
  ), "CastDynamic", """line 123, column 12 of dart:async/future.dart: """, result is Future<T>, false);
  }
 factory Future.microtask(computation()) {
  _Future result = new _Future<T>();
   scheduleMicrotask(() {
    try {
      result._complete(computation());
      }
     catch (e, s) {
      _completeWithErrorCallback(result, e, s);
      }
    }
  );
   return DEVC$RT.cast(result, DEVC$RT.type((_Future<dynamic> _) {
    }
  ), DEVC$RT.type((Future<T> _) {
    }
  ), "CastDynamic", """line 149, column 12 of dart:async/future.dart: """, result is Future<T>, false);
  }
 factory Future.sync(computation()) {
  try {
    var result = computation();
     return new Future<T>.value(result);
    }
   catch (error, stackTrace) {
    return new Future<T>.error(error, stackTrace);
    }
  }
 factory Future.value([value]) {
  return new _Future<T>.immediate(value);
  }
 factory Future.error(Object error, [StackTrace stackTrace]) {
  error = _nonNullError(error);
   if (!identical(Zone.current, _ROOT_ZONE)) {
    AsyncError replacement = Zone.current.errorCallback(error, stackTrace);
     if (replacement != null) {
      error = _nonNullError(replacement.error);
       stackTrace = replacement.stackTrace;
      }
    }
   return new _Future<T>.immediateError(error, stackTrace);
  }
 factory Future.delayed(Duration duration, [T computation()]) {
  _Future result = new _Future<T>();
   new Timer(duration, () {
    try {
      result._complete(computation == null ? null : computation());
      }
     catch (e, s) {
      _completeWithErrorCallback(result, e, s);
      }
    }
  );
   return DEVC$RT.cast(result, DEVC$RT.type((_Future<dynamic> _) {
    }
  ), DEVC$RT.type((Future<T> _) {
    }
  ), "CastDynamic", """line 233, column 12 of dart:async/future.dart: """, result is Future<T>, false);
  }
 static Future<List> wait(Iterable<Future> futures, {
  bool eagerError : false, void cleanUp(successValue)}
) {
  final _Future<List> result = new _Future<List>();
   List values;
   int remaining = 0;
   var error;
   StackTrace stackTrace;
   void handleError(theError, theStackTrace) {
    remaining--;
     if (values != null) {
      if (cleanUp != null) {
        for (var value in values) {
          if (value != null) {
            new Future.sync(() {
              cleanUp(value);
              }
            );
            }
          }
        }
       values = null;
       if (remaining == 0 || eagerError) {
        result._completeError(theError, DEVC$RT.cast(theStackTrace, dynamic, StackTrace, "CastGeneral", """line 280, column 43 of dart:async/future.dart: """, theStackTrace is StackTrace, true));
        }
       else {
        error = theError;
         stackTrace = DEVC$RT.cast(theStackTrace, dynamic, StackTrace, "CastGeneral", """line 283, column 24 of dart:async/future.dart: """, theStackTrace is StackTrace, true);
        }
      }
     else if (remaining == 0 && !eagerError) {
      result._completeError(error, stackTrace);
      }
    }
   for (Future future in futures) {
    int pos = remaining++;
     future.then(((__x16) => DEVC$RT.wrap((dynamic f(Object __u11)) {
      dynamic c(Object x0) => f(x0);
       return f == null ? null : c;
      }
    , __x16, __t14, __t12, "WrapLiteral", """line 294, column 19 of dart:async/future.dart: """, __x16 is __t12))((Object value) {
      remaining--;
       if (values != null) {
        values[pos] = value;
         if (remaining == 0) {
          result._completeWithValue(values);
          }
        }
       else {
        if (cleanUp != null && value != null) {
          new Future.sync(() {
            cleanUp(value);
            }
          );
          }
         if (remaining == 0 && !eagerError) {
          result._completeError(error, stackTrace);
          }
        }
      }
    ), onError: handleError);
    }
   if (remaining == 0) {
    return ((__x17) => DEVC$RT.cast(__x17, DEVC$RT.type((Future<dynamic> _) {
      }
    ), DEVC$RT.type((Future<List<dynamic>> _) {
      }
    ), "CastExact", """line 313, column 14 of dart:async/future.dart: """, __x17 is Future<List<dynamic>>, false))(new Future.value(const []));
    }
   values = new List(remaining);
   return result;
  }
 static Future forEach(Iterable input, f(element)) {
  Iterator iterator = input.iterator;
   return doWhile(() {
    if (!iterator.moveNext()) return false;
     return new Future.sync(() => f(iterator.current)).then((_) => true);
    }
  );
  }
 static Future doWhile(f()) {
  _Future doneSignal = new _Future();
   var nextIteration;
   nextIteration = Zone.current.bindUnaryCallback(((__x21) => DEVC$RT.wrap((dynamic f(bool __u18)) {
    dynamic c(bool x0) => f(DEVC$RT.cast(x0, dynamic, bool, "CastParam", """line 359, column 52 of dart:async/future.dart: """, x0 is bool, true));
     return f == null ? null : c;
    }
  , __x21, __t19, __t12, "WrapLiteral", """line 359, column 52 of dart:async/future.dart: """, __x21 is __t12))((bool keepGoing) {
    if (keepGoing) {
      new Future.sync(f).then(DEVC$RT.cast(nextIteration, dynamic, __t12, "CastGeneral", """line 361, column 33 of dart:async/future.dart: """, nextIteration is __t12, false), onError: doneSignal._completeError);
      }
     else {
      doneSignal._complete(null);
      }
    }
  ), runGuarded: true);
   nextIteration(true);
   return doneSignal;
  }
 Future then(onValue(T value), {
  Function onError}
);
 Future catchError(Function onError, {
  bool test(Object error)}
);
 Future<T> whenComplete(action());
 Stream<T> asStream();
 Future timeout(Duration timeLimit, {
  onTimeout()}
);
}
 class TimeoutException implements Exception {final String message;
 final Duration duration;
 TimeoutException(this.message, [this.duration]);
 String toString() {
String result = "TimeoutException";
 if (duration != null) result = "TimeoutException after $duration";
 if (message != null) result = "$result: $message";
 return result;
}
}
 abstract class Completer<T> {factory Completer() => new _AsyncCompleter<T>();
 factory Completer.sync() => new _SyncCompleter<T>();
 Future<T> get future;
 void complete([value]);
 void completeError(Object error, [StackTrace stackTrace]);
 bool get isCompleted;
}
 void _completeWithErrorCallback(_Future result, error, stackTrace) {
AsyncError replacement = Zone.current.errorCallback(error, DEVC$RT.cast(stackTrace, dynamic, StackTrace, "CastGeneral", """line 719, column 62 of dart:async/future.dart: """, stackTrace is StackTrace, true));
 if (replacement != null) {
error = _nonNullError(replacement.error);
 stackTrace = replacement.stackTrace;
}
 result._completeError(error, DEVC$RT.cast(stackTrace, dynamic, StackTrace, "CastGeneral", """line 724, column 32 of dart:async/future.dart: """, stackTrace is StackTrace, true));
}
 Object _nonNullError(Object error) => (error != null) ? error : new NullThrownError();
 typedef dynamic __t12(dynamic __u13);
 typedef dynamic __t14(Object __u15);
 typedef dynamic __t19(bool __u20);
