// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) receiveMessage,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(String messageId) readMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String recipientId) startTyping,
    required TResult Function(String recipientId) stopTyping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? receiveMessage,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(String messageId)? readMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String recipientId)? startTyping,
    TResult? Function(String recipientId)? stopTyping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? receiveMessage,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(String messageId)? readMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String recipientId)? startTyping,
    TResult Function(String recipientId)? stopTyping,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(ReceiveMessage value) receiveMessage,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(ReadMessage value) readMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(StartTyping value) startTyping,
    required TResult Function(StopTyping value) stopTyping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(ReceiveMessage value)? receiveMessage,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
    TResult? Function(ReadMessage value)? readMessage,
    TResult? Function(DeleteMessage value)? deleteMessage,
    TResult? Function(StartTyping value)? startTyping,
    TResult? Function(StopTyping value)? stopTyping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(ReceiveMessage value)? receiveMessage,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(ReadMessage value)? readMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(StartTyping value)? startTyping,
    TResult Function(StopTyping value)? stopTyping,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessage message});
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SendMessageImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
    ));
  }
}

/// @nodoc

class _$SendMessageImpl implements SendMessage {
  const _$SendMessageImpl(this.message);

  @override
  final ChatMessage message;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) receiveMessage,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(String messageId) readMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String recipientId) startTyping,
    required TResult Function(String recipientId) stopTyping,
  }) {
    return sendMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? receiveMessage,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(String messageId)? readMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String recipientId)? startTyping,
    TResult? Function(String recipientId)? stopTyping,
  }) {
    return sendMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? receiveMessage,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(String messageId)? readMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String recipientId)? startTyping,
    TResult Function(String recipientId)? stopTyping,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(ReceiveMessage value) receiveMessage,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(ReadMessage value) readMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(StartTyping value) startTyping,
    required TResult Function(StopTyping value) stopTyping,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(ReceiveMessage value)? receiveMessage,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
    TResult? Function(ReadMessage value)? readMessage,
    TResult? Function(DeleteMessage value)? deleteMessage,
    TResult? Function(StartTyping value)? startTyping,
    TResult? Function(StopTyping value)? stopTyping,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(ReceiveMessage value)? receiveMessage,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(ReadMessage value)? readMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(StartTyping value)? startTyping,
    TResult Function(StopTyping value)? stopTyping,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class SendMessage implements ChatEvent {
  const factory SendMessage(final ChatMessage message) = _$SendMessageImpl;

  ChatMessage get message;
  @JsonKey(ignore: true)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReceiveMessageImplCopyWith<$Res> {
  factory _$$ReceiveMessageImplCopyWith(_$ReceiveMessageImpl value,
          $Res Function(_$ReceiveMessageImpl) then) =
      __$$ReceiveMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessage message});
}

/// @nodoc
class __$$ReceiveMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ReceiveMessageImpl>
    implements _$$ReceiveMessageImplCopyWith<$Res> {
  __$$ReceiveMessageImplCopyWithImpl(
      _$ReceiveMessageImpl _value, $Res Function(_$ReceiveMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ReceiveMessageImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
    ));
  }
}

/// @nodoc

class _$ReceiveMessageImpl implements ReceiveMessage {
  const _$ReceiveMessageImpl(this.message);

  @override
  final ChatMessage message;

  @override
  String toString() {
    return 'ChatEvent.receiveMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiveMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiveMessageImplCopyWith<_$ReceiveMessageImpl> get copyWith =>
      __$$ReceiveMessageImplCopyWithImpl<_$ReceiveMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) receiveMessage,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(String messageId) readMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String recipientId) startTyping,
    required TResult Function(String recipientId) stopTyping,
  }) {
    return receiveMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? receiveMessage,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(String messageId)? readMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String recipientId)? startTyping,
    TResult? Function(String recipientId)? stopTyping,
  }) {
    return receiveMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? receiveMessage,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(String messageId)? readMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String recipientId)? startTyping,
    TResult Function(String recipientId)? stopTyping,
    required TResult orElse(),
  }) {
    if (receiveMessage != null) {
      return receiveMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(ReceiveMessage value) receiveMessage,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(ReadMessage value) readMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(StartTyping value) startTyping,
    required TResult Function(StopTyping value) stopTyping,
  }) {
    return receiveMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(ReceiveMessage value)? receiveMessage,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
    TResult? Function(ReadMessage value)? readMessage,
    TResult? Function(DeleteMessage value)? deleteMessage,
    TResult? Function(StartTyping value)? startTyping,
    TResult? Function(StopTyping value)? stopTyping,
  }) {
    return receiveMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(ReceiveMessage value)? receiveMessage,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(ReadMessage value)? readMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(StartTyping value)? startTyping,
    TResult Function(StopTyping value)? stopTyping,
    required TResult orElse(),
  }) {
    if (receiveMessage != null) {
      return receiveMessage(this);
    }
    return orElse();
  }
}

abstract class ReceiveMessage implements ChatEvent {
  const factory ReceiveMessage(final ChatMessage message) =
      _$ReceiveMessageImpl;

  ChatMessage get message;
  @JsonKey(ignore: true)
  _$$ReceiveMessageImplCopyWith<_$ReceiveMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectImplCopyWith<$Res> {
  factory _$$ConnectImplCopyWith(
          _$ConnectImpl value, $Res Function(_$ConnectImpl) then) =
      __$$ConnectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ConnectImpl>
    implements _$$ConnectImplCopyWith<$Res> {
  __$$ConnectImplCopyWithImpl(
      _$ConnectImpl _value, $Res Function(_$ConnectImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectImpl implements Connect {
  const _$ConnectImpl();

  @override
  String toString() {
    return 'ChatEvent.connect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) receiveMessage,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(String messageId) readMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String recipientId) startTyping,
    required TResult Function(String recipientId) stopTyping,
  }) {
    return connect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? receiveMessage,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(String messageId)? readMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String recipientId)? startTyping,
    TResult? Function(String recipientId)? stopTyping,
  }) {
    return connect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? receiveMessage,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(String messageId)? readMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String recipientId)? startTyping,
    TResult Function(String recipientId)? stopTyping,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(ReceiveMessage value) receiveMessage,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(ReadMessage value) readMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(StartTyping value) startTyping,
    required TResult Function(StopTyping value) stopTyping,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(ReceiveMessage value)? receiveMessage,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
    TResult? Function(ReadMessage value)? readMessage,
    TResult? Function(DeleteMessage value)? deleteMessage,
    TResult? Function(StartTyping value)? startTyping,
    TResult? Function(StopTyping value)? stopTyping,
  }) {
    return connect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(ReceiveMessage value)? receiveMessage,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(ReadMessage value)? readMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(StartTyping value)? startTyping,
    TResult Function(StopTyping value)? stopTyping,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }
}

abstract class Connect implements ChatEvent {
  const factory Connect() = _$ConnectImpl;
}

/// @nodoc
abstract class _$$DisconnectImplCopyWith<$Res> {
  factory _$$DisconnectImplCopyWith(
          _$DisconnectImpl value, $Res Function(_$DisconnectImpl) then) =
      __$$DisconnectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisconnectImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$DisconnectImpl>
    implements _$$DisconnectImplCopyWith<$Res> {
  __$$DisconnectImplCopyWithImpl(
      _$DisconnectImpl _value, $Res Function(_$DisconnectImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisconnectImpl implements Disconnect {
  const _$DisconnectImpl();

  @override
  String toString() {
    return 'ChatEvent.disconnect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisconnectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) receiveMessage,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(String messageId) readMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String recipientId) startTyping,
    required TResult Function(String recipientId) stopTyping,
  }) {
    return disconnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? receiveMessage,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(String messageId)? readMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String recipientId)? startTyping,
    TResult? Function(String recipientId)? stopTyping,
  }) {
    return disconnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? receiveMessage,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(String messageId)? readMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String recipientId)? startTyping,
    TResult Function(String recipientId)? stopTyping,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(ReceiveMessage value) receiveMessage,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(ReadMessage value) readMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(StartTyping value) startTyping,
    required TResult Function(StopTyping value) stopTyping,
  }) {
    return disconnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(ReceiveMessage value)? receiveMessage,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
    TResult? Function(ReadMessage value)? readMessage,
    TResult? Function(DeleteMessage value)? deleteMessage,
    TResult? Function(StartTyping value)? startTyping,
    TResult? Function(StopTyping value)? stopTyping,
  }) {
    return disconnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(ReceiveMessage value)? receiveMessage,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(ReadMessage value)? readMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(StartTyping value)? startTyping,
    TResult Function(StopTyping value)? stopTyping,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect(this);
    }
    return orElse();
  }
}

abstract class Disconnect implements ChatEvent {
  const factory Disconnect() = _$DisconnectImpl;
}

/// @nodoc
abstract class _$$ReadMessageImplCopyWith<$Res> {
  factory _$$ReadMessageImplCopyWith(
          _$ReadMessageImpl value, $Res Function(_$ReadMessageImpl) then) =
      __$$ReadMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageId});
}

/// @nodoc
class __$$ReadMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ReadMessageImpl>
    implements _$$ReadMessageImplCopyWith<$Res> {
  __$$ReadMessageImplCopyWithImpl(
      _$ReadMessageImpl _value, $Res Function(_$ReadMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_$ReadMessageImpl(
      null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReadMessageImpl implements ReadMessage {
  const _$ReadMessageImpl(this.messageId);

  @override
  final String messageId;

  @override
  String toString() {
    return 'ChatEvent.readMessage(messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadMessageImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadMessageImplCopyWith<_$ReadMessageImpl> get copyWith =>
      __$$ReadMessageImplCopyWithImpl<_$ReadMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) receiveMessage,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(String messageId) readMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String recipientId) startTyping,
    required TResult Function(String recipientId) stopTyping,
  }) {
    return readMessage(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? receiveMessage,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(String messageId)? readMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String recipientId)? startTyping,
    TResult? Function(String recipientId)? stopTyping,
  }) {
    return readMessage?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? receiveMessage,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(String messageId)? readMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String recipientId)? startTyping,
    TResult Function(String recipientId)? stopTyping,
    required TResult orElse(),
  }) {
    if (readMessage != null) {
      return readMessage(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(ReceiveMessage value) receiveMessage,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(ReadMessage value) readMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(StartTyping value) startTyping,
    required TResult Function(StopTyping value) stopTyping,
  }) {
    return readMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(ReceiveMessage value)? receiveMessage,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
    TResult? Function(ReadMessage value)? readMessage,
    TResult? Function(DeleteMessage value)? deleteMessage,
    TResult? Function(StartTyping value)? startTyping,
    TResult? Function(StopTyping value)? stopTyping,
  }) {
    return readMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(ReceiveMessage value)? receiveMessage,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(ReadMessage value)? readMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(StartTyping value)? startTyping,
    TResult Function(StopTyping value)? stopTyping,
    required TResult orElse(),
  }) {
    if (readMessage != null) {
      return readMessage(this);
    }
    return orElse();
  }
}

abstract class ReadMessage implements ChatEvent {
  const factory ReadMessage(final String messageId) = _$ReadMessageImpl;

  String get messageId;
  @JsonKey(ignore: true)
  _$$ReadMessageImplCopyWith<_$ReadMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteMessageImplCopyWith<$Res> {
  factory _$$DeleteMessageImplCopyWith(
          _$DeleteMessageImpl value, $Res Function(_$DeleteMessageImpl) then) =
      __$$DeleteMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageId});
}

/// @nodoc
class __$$DeleteMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$DeleteMessageImpl>
    implements _$$DeleteMessageImplCopyWith<$Res> {
  __$$DeleteMessageImplCopyWithImpl(
      _$DeleteMessageImpl _value, $Res Function(_$DeleteMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_$DeleteMessageImpl(
      null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteMessageImpl implements DeleteMessage {
  const _$DeleteMessageImpl(this.messageId);

  @override
  final String messageId;

  @override
  String toString() {
    return 'ChatEvent.deleteMessage(messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMessageImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteMessageImplCopyWith<_$DeleteMessageImpl> get copyWith =>
      __$$DeleteMessageImplCopyWithImpl<_$DeleteMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) receiveMessage,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(String messageId) readMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String recipientId) startTyping,
    required TResult Function(String recipientId) stopTyping,
  }) {
    return deleteMessage(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? receiveMessage,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(String messageId)? readMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String recipientId)? startTyping,
    TResult? Function(String recipientId)? stopTyping,
  }) {
    return deleteMessage?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? receiveMessage,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(String messageId)? readMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String recipientId)? startTyping,
    TResult Function(String recipientId)? stopTyping,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(ReceiveMessage value) receiveMessage,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(ReadMessage value) readMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(StartTyping value) startTyping,
    required TResult Function(StopTyping value) stopTyping,
  }) {
    return deleteMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(ReceiveMessage value)? receiveMessage,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
    TResult? Function(ReadMessage value)? readMessage,
    TResult? Function(DeleteMessage value)? deleteMessage,
    TResult? Function(StartTyping value)? startTyping,
    TResult? Function(StopTyping value)? stopTyping,
  }) {
    return deleteMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(ReceiveMessage value)? receiveMessage,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(ReadMessage value)? readMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(StartTyping value)? startTyping,
    TResult Function(StopTyping value)? stopTyping,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(this);
    }
    return orElse();
  }
}

abstract class DeleteMessage implements ChatEvent {
  const factory DeleteMessage(final String messageId) = _$DeleteMessageImpl;

  String get messageId;
  @JsonKey(ignore: true)
  _$$DeleteMessageImplCopyWith<_$DeleteMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartTypingImplCopyWith<$Res> {
  factory _$$StartTypingImplCopyWith(
          _$StartTypingImpl value, $Res Function(_$StartTypingImpl) then) =
      __$$StartTypingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String recipientId});
}

/// @nodoc
class __$$StartTypingImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$StartTypingImpl>
    implements _$$StartTypingImplCopyWith<$Res> {
  __$$StartTypingImplCopyWithImpl(
      _$StartTypingImpl _value, $Res Function(_$StartTypingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipientId = null,
  }) {
    return _then(_$StartTypingImpl(
      null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartTypingImpl implements StartTyping {
  const _$StartTypingImpl(this.recipientId);

  @override
  final String recipientId;

  @override
  String toString() {
    return 'ChatEvent.startTyping(recipientId: $recipientId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartTypingImpl &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipientId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartTypingImplCopyWith<_$StartTypingImpl> get copyWith =>
      __$$StartTypingImplCopyWithImpl<_$StartTypingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) receiveMessage,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(String messageId) readMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String recipientId) startTyping,
    required TResult Function(String recipientId) stopTyping,
  }) {
    return startTyping(recipientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? receiveMessage,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(String messageId)? readMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String recipientId)? startTyping,
    TResult? Function(String recipientId)? stopTyping,
  }) {
    return startTyping?.call(recipientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? receiveMessage,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(String messageId)? readMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String recipientId)? startTyping,
    TResult Function(String recipientId)? stopTyping,
    required TResult orElse(),
  }) {
    if (startTyping != null) {
      return startTyping(recipientId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(ReceiveMessage value) receiveMessage,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(ReadMessage value) readMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(StartTyping value) startTyping,
    required TResult Function(StopTyping value) stopTyping,
  }) {
    return startTyping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(ReceiveMessage value)? receiveMessage,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
    TResult? Function(ReadMessage value)? readMessage,
    TResult? Function(DeleteMessage value)? deleteMessage,
    TResult? Function(StartTyping value)? startTyping,
    TResult? Function(StopTyping value)? stopTyping,
  }) {
    return startTyping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(ReceiveMessage value)? receiveMessage,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(ReadMessage value)? readMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(StartTyping value)? startTyping,
    TResult Function(StopTyping value)? stopTyping,
    required TResult orElse(),
  }) {
    if (startTyping != null) {
      return startTyping(this);
    }
    return orElse();
  }
}

abstract class StartTyping implements ChatEvent {
  const factory StartTyping(final String recipientId) = _$StartTypingImpl;

  String get recipientId;
  @JsonKey(ignore: true)
  _$$StartTypingImplCopyWith<_$StartTypingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StopTypingImplCopyWith<$Res> {
  factory _$$StopTypingImplCopyWith(
          _$StopTypingImpl value, $Res Function(_$StopTypingImpl) then) =
      __$$StopTypingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String recipientId});
}

/// @nodoc
class __$$StopTypingImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$StopTypingImpl>
    implements _$$StopTypingImplCopyWith<$Res> {
  __$$StopTypingImplCopyWithImpl(
      _$StopTypingImpl _value, $Res Function(_$StopTypingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipientId = null,
  }) {
    return _then(_$StopTypingImpl(
      null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StopTypingImpl implements StopTyping {
  const _$StopTypingImpl(this.recipientId);

  @override
  final String recipientId;

  @override
  String toString() {
    return 'ChatEvent.stopTyping(recipientId: $recipientId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StopTypingImpl &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipientId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StopTypingImplCopyWith<_$StopTypingImpl> get copyWith =>
      __$$StopTypingImplCopyWithImpl<_$StopTypingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) receiveMessage,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function(String messageId) readMessage,
    required TResult Function(String messageId) deleteMessage,
    required TResult Function(String recipientId) startTyping,
    required TResult Function(String recipientId) stopTyping,
  }) {
    return stopTyping(recipientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? receiveMessage,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function(String messageId)? readMessage,
    TResult? Function(String messageId)? deleteMessage,
    TResult? Function(String recipientId)? startTyping,
    TResult? Function(String recipientId)? stopTyping,
  }) {
    return stopTyping?.call(recipientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? receiveMessage,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function(String messageId)? readMessage,
    TResult Function(String messageId)? deleteMessage,
    TResult Function(String recipientId)? startTyping,
    TResult Function(String recipientId)? stopTyping,
    required TResult orElse(),
  }) {
    if (stopTyping != null) {
      return stopTyping(recipientId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(ReceiveMessage value) receiveMessage,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(ReadMessage value) readMessage,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(StartTyping value) startTyping,
    required TResult Function(StopTyping value) stopTyping,
  }) {
    return stopTyping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(ReceiveMessage value)? receiveMessage,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
    TResult? Function(ReadMessage value)? readMessage,
    TResult? Function(DeleteMessage value)? deleteMessage,
    TResult? Function(StartTyping value)? startTyping,
    TResult? Function(StopTyping value)? stopTyping,
  }) {
    return stopTyping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(ReceiveMessage value)? receiveMessage,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(ReadMessage value)? readMessage,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(StartTyping value)? startTyping,
    TResult Function(StopTyping value)? stopTyping,
    required TResult orElse(),
  }) {
    if (stopTyping != null) {
      return stopTyping(this);
    }
    return orElse();
  }
}

abstract class StopTyping implements ChatEvent {
  const factory StopTyping(final String recipientId) = _$StopTypingImpl;

  String get recipientId;
  @JsonKey(ignore: true)
  _$$StopTypingImplCopyWith<_$StopTypingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(ChatMessage message) messageSent,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId) messageRead,
    required TResult Function(String messageId) messageDeleted,
    required TResult Function(String recipientId) typingStarted,
    required TResult Function(String recipientId) typingStopped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(ChatMessage message)? messageSent,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId)? messageRead,
    TResult? Function(String messageId)? messageDeleted,
    TResult? Function(String recipientId)? typingStarted,
    TResult? Function(String recipientId)? typingStopped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(ChatMessage message)? messageSent,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId)? messageRead,
    TResult Function(String messageId)? messageDeleted,
    TResult Function(String recipientId)? typingStarted,
    TResult Function(String recipientId)? typingStopped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(MessageDeleted value) messageDeleted,
    required TResult Function(TypingStarted value) typingStarted,
    required TResult Function(TypingStopped value) typingStopped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(MessageDeleted value)? messageDeleted,
    TResult? Function(TypingStarted value)? typingStarted,
    TResult? Function(TypingStopped value)? typingStopped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(MessageDeleted value)? messageDeleted,
    TResult Function(TypingStarted value)? typingStarted,
    TResult Function(TypingStopped value)? typingStopped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ConnectedImplCopyWith<$Res> {
  factory _$$ConnectedImplCopyWith(
          _$ConnectedImpl value, $Res Function(_$ConnectedImpl) then) =
      __$$ConnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ConnectedImpl>
    implements _$$ConnectedImplCopyWith<$Res> {
  __$$ConnectedImplCopyWithImpl(
      _$ConnectedImpl _value, $Res Function(_$ConnectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectedImpl implements Connected {
  const _$ConnectedImpl();

  @override
  String toString() {
    return 'ChatState.connected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(ChatMessage message) messageSent,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId) messageRead,
    required TResult Function(String messageId) messageDeleted,
    required TResult Function(String recipientId) typingStarted,
    required TResult Function(String recipientId) typingStopped,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(ChatMessage message)? messageSent,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId)? messageRead,
    TResult? Function(String messageId)? messageDeleted,
    TResult? Function(String recipientId)? typingStarted,
    TResult? Function(String recipientId)? typingStopped,
  }) {
    return connected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(ChatMessage message)? messageSent,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId)? messageRead,
    TResult Function(String messageId)? messageDeleted,
    TResult Function(String recipientId)? typingStarted,
    TResult Function(String recipientId)? typingStopped,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(MessageDeleted value) messageDeleted,
    required TResult Function(TypingStarted value) typingStarted,
    required TResult Function(TypingStopped value) typingStopped,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(MessageDeleted value)? messageDeleted,
    TResult? Function(TypingStarted value)? typingStarted,
    TResult? Function(TypingStopped value)? typingStopped,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(MessageDeleted value)? messageDeleted,
    TResult Function(TypingStarted value)? typingStarted,
    TResult Function(TypingStopped value)? typingStopped,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class Connected implements ChatState {
  const factory Connected() = _$ConnectedImpl;
}

/// @nodoc
abstract class _$$DisconnectedImplCopyWith<$Res> {
  factory _$$DisconnectedImplCopyWith(
          _$DisconnectedImpl value, $Res Function(_$DisconnectedImpl) then) =
      __$$DisconnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisconnectedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$DisconnectedImpl>
    implements _$$DisconnectedImplCopyWith<$Res> {
  __$$DisconnectedImplCopyWithImpl(
      _$DisconnectedImpl _value, $Res Function(_$DisconnectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisconnectedImpl implements Disconnected {
  const _$DisconnectedImpl();

  @override
  String toString() {
    return 'ChatState.disconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisconnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(ChatMessage message) messageSent,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId) messageRead,
    required TResult Function(String messageId) messageDeleted,
    required TResult Function(String recipientId) typingStarted,
    required TResult Function(String recipientId) typingStopped,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(ChatMessage message)? messageSent,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId)? messageRead,
    TResult? Function(String messageId)? messageDeleted,
    TResult? Function(String recipientId)? typingStarted,
    TResult? Function(String recipientId)? typingStopped,
  }) {
    return disconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(ChatMessage message)? messageSent,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId)? messageRead,
    TResult Function(String messageId)? messageDeleted,
    TResult Function(String recipientId)? typingStarted,
    TResult Function(String recipientId)? typingStopped,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(MessageDeleted value) messageDeleted,
    required TResult Function(TypingStarted value) typingStarted,
    required TResult Function(TypingStopped value) typingStopped,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(MessageDeleted value)? messageDeleted,
    TResult? Function(TypingStarted value)? typingStarted,
    TResult? Function(TypingStopped value)? typingStopped,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(MessageDeleted value)? messageDeleted,
    TResult Function(TypingStarted value)? typingStarted,
    TResult Function(TypingStopped value)? typingStopped,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class Disconnected implements ChatState {
  const factory Disconnected() = _$DisconnectedImpl;
}

/// @nodoc
abstract class _$$MessageSentImplCopyWith<$Res> {
  factory _$$MessageSentImplCopyWith(
          _$MessageSentImpl value, $Res Function(_$MessageSentImpl) then) =
      __$$MessageSentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessage message});
}

/// @nodoc
class __$$MessageSentImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$MessageSentImpl>
    implements _$$MessageSentImplCopyWith<$Res> {
  __$$MessageSentImplCopyWithImpl(
      _$MessageSentImpl _value, $Res Function(_$MessageSentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MessageSentImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
    ));
  }
}

/// @nodoc

class _$MessageSentImpl implements MessageSent {
  const _$MessageSentImpl(this.message);

  @override
  final ChatMessage message;

  @override
  String toString() {
    return 'ChatState.messageSent(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageSentImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageSentImplCopyWith<_$MessageSentImpl> get copyWith =>
      __$$MessageSentImplCopyWithImpl<_$MessageSentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(ChatMessage message) messageSent,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId) messageRead,
    required TResult Function(String messageId) messageDeleted,
    required TResult Function(String recipientId) typingStarted,
    required TResult Function(String recipientId) typingStopped,
  }) {
    return messageSent(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(ChatMessage message)? messageSent,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId)? messageRead,
    TResult? Function(String messageId)? messageDeleted,
    TResult? Function(String recipientId)? typingStarted,
    TResult? Function(String recipientId)? typingStopped,
  }) {
    return messageSent?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(ChatMessage message)? messageSent,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId)? messageRead,
    TResult Function(String messageId)? messageDeleted,
    TResult Function(String recipientId)? typingStarted,
    TResult Function(String recipientId)? typingStopped,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(MessageDeleted value) messageDeleted,
    required TResult Function(TypingStarted value) typingStarted,
    required TResult Function(TypingStopped value) typingStopped,
  }) {
    return messageSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(MessageDeleted value)? messageDeleted,
    TResult? Function(TypingStarted value)? typingStarted,
    TResult? Function(TypingStopped value)? typingStopped,
  }) {
    return messageSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(MessageDeleted value)? messageDeleted,
    TResult Function(TypingStarted value)? typingStarted,
    TResult Function(TypingStopped value)? typingStopped,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(this);
    }
    return orElse();
  }
}

abstract class MessageSent implements ChatState {
  const factory MessageSent(final ChatMessage message) = _$MessageSentImpl;

  ChatMessage get message;
  @JsonKey(ignore: true)
  _$$MessageSentImplCopyWith<_$MessageSentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageReceivedImplCopyWith<$Res> {
  factory _$$MessageReceivedImplCopyWith(_$MessageReceivedImpl value,
          $Res Function(_$MessageReceivedImpl) then) =
      __$$MessageReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessage message});
}

/// @nodoc
class __$$MessageReceivedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$MessageReceivedImpl>
    implements _$$MessageReceivedImplCopyWith<$Res> {
  __$$MessageReceivedImplCopyWithImpl(
      _$MessageReceivedImpl _value, $Res Function(_$MessageReceivedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MessageReceivedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
    ));
  }
}

/// @nodoc

class _$MessageReceivedImpl implements MessageReceived {
  const _$MessageReceivedImpl(this.message);

  @override
  final ChatMessage message;

  @override
  String toString() {
    return 'ChatState.messageReceived(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageReceivedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageReceivedImplCopyWith<_$MessageReceivedImpl> get copyWith =>
      __$$MessageReceivedImplCopyWithImpl<_$MessageReceivedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(ChatMessage message) messageSent,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId) messageRead,
    required TResult Function(String messageId) messageDeleted,
    required TResult Function(String recipientId) typingStarted,
    required TResult Function(String recipientId) typingStopped,
  }) {
    return messageReceived(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(ChatMessage message)? messageSent,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId)? messageRead,
    TResult? Function(String messageId)? messageDeleted,
    TResult? Function(String recipientId)? typingStarted,
    TResult? Function(String recipientId)? typingStopped,
  }) {
    return messageReceived?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(ChatMessage message)? messageSent,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId)? messageRead,
    TResult Function(String messageId)? messageDeleted,
    TResult Function(String recipientId)? typingStarted,
    TResult Function(String recipientId)? typingStopped,
    required TResult orElse(),
  }) {
    if (messageReceived != null) {
      return messageReceived(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(MessageDeleted value) messageDeleted,
    required TResult Function(TypingStarted value) typingStarted,
    required TResult Function(TypingStopped value) typingStopped,
  }) {
    return messageReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(MessageDeleted value)? messageDeleted,
    TResult? Function(TypingStarted value)? typingStarted,
    TResult? Function(TypingStopped value)? typingStopped,
  }) {
    return messageReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(MessageDeleted value)? messageDeleted,
    TResult Function(TypingStarted value)? typingStarted,
    TResult Function(TypingStopped value)? typingStopped,
    required TResult orElse(),
  }) {
    if (messageReceived != null) {
      return messageReceived(this);
    }
    return orElse();
  }
}

abstract class MessageReceived implements ChatState {
  const factory MessageReceived(final ChatMessage message) =
      _$MessageReceivedImpl;

  ChatMessage get message;
  @JsonKey(ignore: true)
  _$$MessageReceivedImplCopyWith<_$MessageReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageReadImplCopyWith<$Res> {
  factory _$$MessageReadImplCopyWith(
          _$MessageReadImpl value, $Res Function(_$MessageReadImpl) then) =
      __$$MessageReadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageId});
}

/// @nodoc
class __$$MessageReadImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$MessageReadImpl>
    implements _$$MessageReadImplCopyWith<$Res> {
  __$$MessageReadImplCopyWithImpl(
      _$MessageReadImpl _value, $Res Function(_$MessageReadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_$MessageReadImpl(
      null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessageReadImpl implements MessageRead {
  const _$MessageReadImpl(this.messageId);

  @override
  final String messageId;

  @override
  String toString() {
    return 'ChatState.messageRead(messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageReadImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageReadImplCopyWith<_$MessageReadImpl> get copyWith =>
      __$$MessageReadImplCopyWithImpl<_$MessageReadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(ChatMessage message) messageSent,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId) messageRead,
    required TResult Function(String messageId) messageDeleted,
    required TResult Function(String recipientId) typingStarted,
    required TResult Function(String recipientId) typingStopped,
  }) {
    return messageRead(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(ChatMessage message)? messageSent,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId)? messageRead,
    TResult? Function(String messageId)? messageDeleted,
    TResult? Function(String recipientId)? typingStarted,
    TResult? Function(String recipientId)? typingStopped,
  }) {
    return messageRead?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(ChatMessage message)? messageSent,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId)? messageRead,
    TResult Function(String messageId)? messageDeleted,
    TResult Function(String recipientId)? typingStarted,
    TResult Function(String recipientId)? typingStopped,
    required TResult orElse(),
  }) {
    if (messageRead != null) {
      return messageRead(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(MessageDeleted value) messageDeleted,
    required TResult Function(TypingStarted value) typingStarted,
    required TResult Function(TypingStopped value) typingStopped,
  }) {
    return messageRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(MessageDeleted value)? messageDeleted,
    TResult? Function(TypingStarted value)? typingStarted,
    TResult? Function(TypingStopped value)? typingStopped,
  }) {
    return messageRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(MessageDeleted value)? messageDeleted,
    TResult Function(TypingStarted value)? typingStarted,
    TResult Function(TypingStopped value)? typingStopped,
    required TResult orElse(),
  }) {
    if (messageRead != null) {
      return messageRead(this);
    }
    return orElse();
  }
}

abstract class MessageRead implements ChatState {
  const factory MessageRead(final String messageId) = _$MessageReadImpl;

  String get messageId;
  @JsonKey(ignore: true)
  _$$MessageReadImplCopyWith<_$MessageReadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageDeletedImplCopyWith<$Res> {
  factory _$$MessageDeletedImplCopyWith(_$MessageDeletedImpl value,
          $Res Function(_$MessageDeletedImpl) then) =
      __$$MessageDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageId});
}

/// @nodoc
class __$$MessageDeletedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$MessageDeletedImpl>
    implements _$$MessageDeletedImplCopyWith<$Res> {
  __$$MessageDeletedImplCopyWithImpl(
      _$MessageDeletedImpl _value, $Res Function(_$MessageDeletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_$MessageDeletedImpl(
      null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessageDeletedImpl implements MessageDeleted {
  const _$MessageDeletedImpl(this.messageId);

  @override
  final String messageId;

  @override
  String toString() {
    return 'ChatState.messageDeleted(messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageDeletedImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageDeletedImplCopyWith<_$MessageDeletedImpl> get copyWith =>
      __$$MessageDeletedImplCopyWithImpl<_$MessageDeletedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(ChatMessage message) messageSent,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId) messageRead,
    required TResult Function(String messageId) messageDeleted,
    required TResult Function(String recipientId) typingStarted,
    required TResult Function(String recipientId) typingStopped,
  }) {
    return messageDeleted(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(ChatMessage message)? messageSent,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId)? messageRead,
    TResult? Function(String messageId)? messageDeleted,
    TResult? Function(String recipientId)? typingStarted,
    TResult? Function(String recipientId)? typingStopped,
  }) {
    return messageDeleted?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(ChatMessage message)? messageSent,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId)? messageRead,
    TResult Function(String messageId)? messageDeleted,
    TResult Function(String recipientId)? typingStarted,
    TResult Function(String recipientId)? typingStopped,
    required TResult orElse(),
  }) {
    if (messageDeleted != null) {
      return messageDeleted(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(MessageDeleted value) messageDeleted,
    required TResult Function(TypingStarted value) typingStarted,
    required TResult Function(TypingStopped value) typingStopped,
  }) {
    return messageDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(MessageDeleted value)? messageDeleted,
    TResult? Function(TypingStarted value)? typingStarted,
    TResult? Function(TypingStopped value)? typingStopped,
  }) {
    return messageDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(MessageDeleted value)? messageDeleted,
    TResult Function(TypingStarted value)? typingStarted,
    TResult Function(TypingStopped value)? typingStopped,
    required TResult orElse(),
  }) {
    if (messageDeleted != null) {
      return messageDeleted(this);
    }
    return orElse();
  }
}

abstract class MessageDeleted implements ChatState {
  const factory MessageDeleted(final String messageId) = _$MessageDeletedImpl;

  String get messageId;
  @JsonKey(ignore: true)
  _$$MessageDeletedImplCopyWith<_$MessageDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TypingStartedImplCopyWith<$Res> {
  factory _$$TypingStartedImplCopyWith(
          _$TypingStartedImpl value, $Res Function(_$TypingStartedImpl) then) =
      __$$TypingStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String recipientId});
}

/// @nodoc
class __$$TypingStartedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$TypingStartedImpl>
    implements _$$TypingStartedImplCopyWith<$Res> {
  __$$TypingStartedImplCopyWithImpl(
      _$TypingStartedImpl _value, $Res Function(_$TypingStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipientId = null,
  }) {
    return _then(_$TypingStartedImpl(
      null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TypingStartedImpl implements TypingStarted {
  const _$TypingStartedImpl(this.recipientId);

  @override
  final String recipientId;

  @override
  String toString() {
    return 'ChatState.typingStarted(recipientId: $recipientId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypingStartedImpl &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipientId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypingStartedImplCopyWith<_$TypingStartedImpl> get copyWith =>
      __$$TypingStartedImplCopyWithImpl<_$TypingStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(ChatMessage message) messageSent,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId) messageRead,
    required TResult Function(String messageId) messageDeleted,
    required TResult Function(String recipientId) typingStarted,
    required TResult Function(String recipientId) typingStopped,
  }) {
    return typingStarted(recipientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(ChatMessage message)? messageSent,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId)? messageRead,
    TResult? Function(String messageId)? messageDeleted,
    TResult? Function(String recipientId)? typingStarted,
    TResult? Function(String recipientId)? typingStopped,
  }) {
    return typingStarted?.call(recipientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(ChatMessage message)? messageSent,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId)? messageRead,
    TResult Function(String messageId)? messageDeleted,
    TResult Function(String recipientId)? typingStarted,
    TResult Function(String recipientId)? typingStopped,
    required TResult orElse(),
  }) {
    if (typingStarted != null) {
      return typingStarted(recipientId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(MessageDeleted value) messageDeleted,
    required TResult Function(TypingStarted value) typingStarted,
    required TResult Function(TypingStopped value) typingStopped,
  }) {
    return typingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(MessageDeleted value)? messageDeleted,
    TResult? Function(TypingStarted value)? typingStarted,
    TResult? Function(TypingStopped value)? typingStopped,
  }) {
    return typingStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(MessageDeleted value)? messageDeleted,
    TResult Function(TypingStarted value)? typingStarted,
    TResult Function(TypingStopped value)? typingStopped,
    required TResult orElse(),
  }) {
    if (typingStarted != null) {
      return typingStarted(this);
    }
    return orElse();
  }
}

abstract class TypingStarted implements ChatState {
  const factory TypingStarted(final String recipientId) = _$TypingStartedImpl;

  String get recipientId;
  @JsonKey(ignore: true)
  _$$TypingStartedImplCopyWith<_$TypingStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TypingStoppedImplCopyWith<$Res> {
  factory _$$TypingStoppedImplCopyWith(
          _$TypingStoppedImpl value, $Res Function(_$TypingStoppedImpl) then) =
      __$$TypingStoppedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String recipientId});
}

/// @nodoc
class __$$TypingStoppedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$TypingStoppedImpl>
    implements _$$TypingStoppedImplCopyWith<$Res> {
  __$$TypingStoppedImplCopyWithImpl(
      _$TypingStoppedImpl _value, $Res Function(_$TypingStoppedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipientId = null,
  }) {
    return _then(_$TypingStoppedImpl(
      null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TypingStoppedImpl implements TypingStopped {
  const _$TypingStoppedImpl(this.recipientId);

  @override
  final String recipientId;

  @override
  String toString() {
    return 'ChatState.typingStopped(recipientId: $recipientId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypingStoppedImpl &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipientId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypingStoppedImplCopyWith<_$TypingStoppedImpl> get copyWith =>
      __$$TypingStoppedImplCopyWithImpl<_$TypingStoppedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(ChatMessage message) messageSent,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId) messageRead,
    required TResult Function(String messageId) messageDeleted,
    required TResult Function(String recipientId) typingStarted,
    required TResult Function(String recipientId) typingStopped,
  }) {
    return typingStopped(recipientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(ChatMessage message)? messageSent,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId)? messageRead,
    TResult? Function(String messageId)? messageDeleted,
    TResult? Function(String recipientId)? typingStarted,
    TResult? Function(String recipientId)? typingStopped,
  }) {
    return typingStopped?.call(recipientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(ChatMessage message)? messageSent,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId)? messageRead,
    TResult Function(String messageId)? messageDeleted,
    TResult Function(String recipientId)? typingStarted,
    TResult Function(String recipientId)? typingStopped,
    required TResult orElse(),
  }) {
    if (typingStopped != null) {
      return typingStopped(recipientId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(MessageDeleted value) messageDeleted,
    required TResult Function(TypingStarted value) typingStarted,
    required TResult Function(TypingStopped value) typingStopped,
  }) {
    return typingStopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(MessageDeleted value)? messageDeleted,
    TResult? Function(TypingStarted value)? typingStarted,
    TResult? Function(TypingStopped value)? typingStopped,
  }) {
    return typingStopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(MessageDeleted value)? messageDeleted,
    TResult Function(TypingStarted value)? typingStarted,
    TResult Function(TypingStopped value)? typingStopped,
    required TResult orElse(),
  }) {
    if (typingStopped != null) {
      return typingStopped(this);
    }
    return orElse();
  }
}

abstract class TypingStopped implements ChatState {
  const factory TypingStopped(final String recipientId) = _$TypingStoppedImpl;

  String get recipientId;
  @JsonKey(ignore: true)
  _$$TypingStoppedImplCopyWith<_$TypingStoppedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
