$header

#include "hbclass.ch"

CLASS QKeyEvent INHERIT QInputEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD count
   METHOD isAutoRepeat
   METHOD key
   METHOD matches
   METHOD modifiers
   METHOD nativeModifiers
   METHOD nativeScanCode
   METHOD nativeVirtualKey
   METHOD text

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QKeyEvent ( Type type, int key, Qt::KeyboardModifiers modifiers, const QString & text = QString(), bool autorep = false, ushort count = 1 )
*/
$constructor=|new|QEvent::Type,int,Qt::KeyboardModifiers,const QString &=QString(),bool=false,ushort=1

$deleteMethod

/*
int count () const
*/
$method=|int|count|

/*
bool isAutoRepeat () const
*/
$method=|bool|isAutoRepeat|

/*
int key () const
*/
$method=|int|key|

/*
bool matches ( QKeySequence::StandardKey key ) const
*/
$method=|bool|matches|QKeySequence::StandardKey

/*
Qt::KeyboardModifiers modifiers () const
*/
$method=|Qt::KeyboardModifiers|modifiers|

/*
quint32 nativeModifiers () const
*/
$method=|quint32|nativeModifiers|

/*
quint32 nativeScanCode () const
*/
$method=|quint32|nativeScanCode|

/*
quint32 nativeVirtualKey () const
*/
$method=|quint32|nativeVirtualKey|

/*
QString text () const
*/
$method=|QString|text|

#pragma ENDDUMP
